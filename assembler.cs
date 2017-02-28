using System;
using System.IO;
using System.Collections.Generic;
using System.Text;
class Assembler{
    public Assembler(){}
    static StreamWriter error;
    public static int Main(string[] args){
        new Assembler().Run(args);
        if(error != null){
            error.Close();
        }
        return 0;
    }
    void Run(string[] args){
        /*args[0]に入力*/
        if(args.Length == 0){
            errorMSG("error: no input files\n");
            return;
        }
        {
            /*codeを受け取りsub_code1に中間コードを*/
            StreamReader code = new StreamReader(args[0]+".s");
            StreamWriter sub_code1 = new StreamWriter("intermediatecode1.s");
            new MemoryPlaceManager(code,sub_code1);
            sub_code1.Close();
            if(error != null){
                code.Close();
                return;
            }
            code.BaseStream.Seek(0,SeekOrigin.Begin);
            /*commentにコメント情報を*/
            StreamWriter comment = new StreamWriter("comment.s");
            new TakeComment(code,comment);
            code.Close();
            comment.Close();
        }
        {
            /*sub_code1を受け取りsub_code2に中間コードを*/
            StreamReader sub_code1 = new StreamReader("intermediatecode1.s");
            StreamWriter sub_code2 = new StreamWriter("intermediatecode2.s");
            new OperatorAssemble(sub_code1,sub_code2);
            sub_code1.Close();
            sub_code2.Close();
            if(error != null){
                return;
            }
        }
        {
            /*sub_code2を受け取りbinaryに中間コードを*/
            StreamReader sub_code2 = new StreamReader("intermediatecode2.s");
            BinaryWriter binary = new BinaryWriter(File.Open("binary", FileMode.Create));
            new MakeBinary(sub_code2,binary);
            sub_code2.Close();
            binary.Close();
        }
	}
    public static void errorMSG(string s){
        if(error == null){
            error = new StreamWriter("error.s");
        }
        error.Write(s);
    }
}
static class Tool{
    /*Nを自然数としてbbitでWに出力*/
    public static int PrintBinNature(long N,int b,StreamWriter W){
        if(N >= ((long)1 << b)){
            return 1;
        }
        else if(N < 0){
            return 2;
        }
        else{
            for(int i=0;i<b;i++){
                W.Write((N & (1 << (b-i-1))) != 0 ? "1" : "0");
            }
            return 0;
        }
    }
    /*Nを整数としてbbitでWに出力*/
    public static int PrintBinZ(long N,int b,StreamWriter W){
        if(N >= ((long)1 << (b-1)) || N < -((long)1 << (b-1))){
            return 1;
        }
        else{
            long k = N >= 0 ? N : 2*(1 << (b-1)) + N;
            for(int i=0;i<b;i++){
                W.Write((k & (1 << (b-i-1))) != 0 ? "1" : "0");
            }
            return 0;
        }
    }
    /*16進数の文字列を2進数に変換しWに出力*/
    public static int PrintHexademical(string s,StreamWriter W){
        int i;
        for(i=0;i<s.Length;i++){
            switch(s[i]){
                case '0':
                    W.Write("0000");
                    break;
                case '1':
                    W.Write("0001");
                    break;
                case '2':
                    W.Write("0010");
                    break;
                case '3':
                    W.Write("0011");
                    break;
                case '4':
                    W.Write("0100");
                    break;
                case '5':
                    W.Write("0101");
                    break;
                case '6':
                    W.Write("0110");
                    break;
                case '7':
                    W.Write("0111");
                    break;
                case '8':
                    W.Write("1000");
                    break;
                case '9':
                    W.Write("1001");
                    break;
                case 'a':
                    W.Write("1010");
                    break;
                case 'b':
                    W.Write("1011");
                    break;
                case 'c':
                    W.Write("1100");
                    break;
                case 'd':
                    W.Write("1101");
                    break;
                case 'e':
                    W.Write("1110");
                    break;
                case 'f':
                    W.Write("1111");
                    break;
                default:
                    return 1;
            }
        }
        W.WriteLine();
        return 0;
    }
}
/*コメントの情報を取得するクラス*/
class TakeComment{
    StreamReader originalcode;
    StreamWriter code;
    int line;
    long memory;
    public TakeComment(StreamReader f,StreamWriter t){
        originalcode = f;
        code = t;
        Calc();
    }
    void Calc(){
        line = 0;
        memory = 0;
        string s;
        while((s = originalcode.ReadLine()) != null){
            string[] str = s.Split(new string[]{" ","\t",","},StringSplitOptions.RemoveEmptyEntries);
            switch(str[0]){
                /*FINはコメントがない*/
                case "FIN":
                case ".start":
                    memory += 4;
                    break;
                case ".align":
                    {
                        long align = int.Parse(str[1]);
                        long diff = (memory+align-1)/align*align - memory;
                        for(int i=0;i<diff/4;i++){
                            code.WriteLine();
                        }
                        memory = (memory+align-1)/align*align;
                        break;
                    }
                case ".SPACE":
                    {
                        long SPACE = int.Parse(str[1]);
                        for(int i=0;i<SPACE/4;i++){
                            code.WriteLine();
                        }
                        memory += SPACE;
                        break;
                    }
                default:
                    memory += 4;
                    for(int i=0;i<s.Length;i++){
                        if(s[i] == '#'){
                            code.WriteLine(s.Substring(i,s.Length-i));
                            break;
                        }
                    }
                    break;
            }
            line ++;
        }
    }
}
/*0と1の文字列をバイナリに変換するクラス*/
class MakeBinary{
    StreamReader originalcode;
    BinaryWriter code;
    int line;
    public MakeBinary(StreamReader f,BinaryWriter t){
        originalcode = f;
        code = t;
        Calc();
    }
    void Calc(){
        line = 0;
        string s;
        while((s = originalcode.ReadLine()) != null){
            if(s.Length != 32){
                Assembler.errorMSG("Need to be 32 bit line"+line);
                break;
            }
            for(int i=0;i<4;i++){
                byte b = (byte)0;
                for(int j=0;j<8;j++){
                    if(s[i*8+j] == '1'){
                        b |= (byte)(1 << (7-j));
                    }
                }
                code.Write(b);
            }
            line++;
        }
    }
}
/*Operatorを読み取って0と1の文字列に変換するクラス*/
class OperatorAssemble{
    StreamReader originalcode;
    StreamWriter code;
    int line;
    public OperatorAssemble(StreamReader f,StreamWriter t){
        originalcode = f;
        code = t;
        Calc();
    }
    void Calc(){
        line = 0;
        string s;
        while((s = originalcode.ReadLine()) != null){
            Execute(s);
            line++;
        }
    }
    void Execute(string s){
        string[] str = s.Split(new string[]{" ","\t",","},StringSplitOptions.RemoveEmptyEntries);
        switch(str[0]){
            case "cat":
                code.Write(str[1]);
                break;
            case "add":
            case "ADD":
                ExecuteThreeRegister(s,1);
                break;
            case "sub":
            case "SUB":
                ExecuteThreeRegister(s,2);
                break;
            case "addi":
            case "ADDI":
                ExecuteTwoRegisterAndConst(s,3);
                break;
            case "half":
            case "HALF":
                ExecuteTwoRegister(s,4);
                break;
            case "four":
            case "FOUR":
                ExecuteTwoRegister(s,5);
                break;
            case "j":
            case "J":
                ExecuteConst(s,6);
                break;
            case "jz":
            case "JZ":
                ExecuteConst(s,7);
                break;
            case "fjlt":
            case "FJLT":
                ExecuteConst(s,8);
                break;
            case "fadd":
            case "FADD":
                ExecuteThreeRegister(s,9);
                break;
            case "fsub":
            case "FSUB":
                ExecuteThreeRegister(s,10);
                break;
            case "fmul":
            case "FMUL":
                ExecuteThreeRegister(s,11);
                break;
            case "fdiv":
            case "FDIV":
                ExecuteThreeRegister(s,12);
                break;
            case "fcmp":
            case "FCMP":
                ExecuteTwoRegister(s,13);
                break;
            case "fjeq":
            case "FJEQ":
                ExecuteConst(s,14);
                break;
            case "cmp":
            case "CMP":
                ExecuteTwoRegister(s,15);
                break;
            case "link":
            case "LINK":
                ExecuteNothing(17);
                break;
            case "jc":
            case "JC":
                ExecuteNothing(19);
                break;
            case "mv":
            case "MV":
                ExecuteTwoRegister(s,21);
                break;
            case "neg1":
            case "NEG1":
                ExecuteOneRegister(s,22);
                break;
            case "fneg1":
            case "FNEG1":
                ExecuteOneRegister(s,23);
                break;
            case "neg2":
            case "NEG2":
                ExecuteTwoRegister(s,24);
                break;
            case "fneg2":
            case "FNEG2":
                ExecuteTwoRegister(s,25);
                break;
            case "inc":
            case "INC":
                ExecuteOneRegister(s,26);
                break;
            case "dec":
            case "DEC":
                ExecuteOneRegister(s,27);
                break;
            case "inc1":
            case "INC1":
                ExecuteOneRegister(s,28);
                break;
            case "dec1":
            case "DEC1":
                ExecuteOneRegister(s,29);
                break;
            case "mvi":
            case "MVI":
                ExecuteOneRegisterAndConst(s,30);
                break;
            case "ldr":
            case "LDR":
                ExecuteTwoRegisterAndConst(s,31);
                break;
            case "ldd":
            case "LDD":
                ExecuteThreeRegisterAndConst(s,32);
                break;
            case "lda":
            case "LDA":
                ExecuteOneRegisterAndConst(s,33);
                break;
            case "sdr":
            case "SDR":
                ExecuteTwoRegisterAndConst(s,34);
                break;
            case "sdd":
            case "SDD":
                ExecuteThreeRegisterAndConst(s,35);
                break;
            case "sda":
            case "SDA":
                ExecuteOneRegisterAndConst(s,36);
                break;
            case "fldr":
            case "FLDR":
                ExecuteTwoRegisterAndConst(s,37);
                break;
            case "fldd":
            case "FLDD":
                ExecuteThreeRegisterAndConst(s,38);
                break;
            case "flda":
            case "FLDA":
                ExecuteOneRegisterAndConst(s,39);
                break;
            case "fsdr":
            case "FSDR":
                ExecuteTwoRegisterAndConst(s,40);
                break;
            case "fsdd":
            case "FSDD":
                ExecuteThreeRegisterAndConst(s,41);
                break;
            case "fsda":
            case "FSDA":
                ExecuteOneRegisterAndConst(s,42);
                break;
            case "fmv":
            case "FMV":
                ExecuteTwoRegister(s,44);
                break;
            case "sl":
            case "SL":
                ExecuteThreeRegister(s,45);
                break;
            case "sr":
            case "SR":
                ExecuteThreeRegister(s,46);
                break;
            case "rf":
            case "RF":
                ExecuteOneRegister(s,47);
                break;
            case "ri":
            case "RI":
                ExecuteOneRegister(s,48);
                break;
            case "print":
            case "PRINT":
                ExecuteOneRegister(s,49);
                break;
            case "fabs":
            case "FABS":
                ExecuteTwoRegister(s,50);
                break;
            case "mul":
            case "MUL":
                ExecuteThreeRegister(s,51);
                break;
            case "div":
            case "DIV":
                ExecuteThreeRegister(s,52);
                break;
            case "sip":
            case "SIP":
                ExecuteNothing(53);
                break;
            case "fin":
            case "FIN":
                ExecuteNothing(54);
                break;
            case "ceq":
            case "CEQ":
                ExecuteTwoRegister(s,55);
                break;
            case "rc":
            case "RC":
                ExecuteOneRegister(s,56);
                break;
            default:
                Assembler.errorMSG("Unknown Operand "+str[0]+" line "+line+"\n");
                break;
        }
        code.WriteLine();
    }
    /*26bitの0*/
    void ExecuteNothing(int i){
        int e = Tool.PrintBinNature(i,6,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        Tool.PrintBinNature(0,26,code);
    }
    /*26bitの定数*/
    void ExecuteConst(string s,int i){
        string[] str = s.Split(new string[]{" ","\t",","},StringSplitOptions.RemoveEmptyEntries);
        int e = Tool.PrintBinNature(i,6,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinZ(int.Parse(str[1]),26,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
    }
    /*1つのレジスタと21bitの定数*/
    void ExecuteOneRegisterAndConst(string s,int i){
        string[] str = s.Split(new string[]{" ","\t",","},StringSplitOptions.RemoveEmptyEntries);
        int e = Tool.PrintBinNature(i,6,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinNature(int.Parse(str[1]),5,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinZ(int.Parse(str[2]),21,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
    }
    /*2つのレジスタと16bitの定数*/
    void ExecuteTwoRegisterAndConst(string s,int i){
        string[] str = s.Split(new string[]{" ","\t",","},StringSplitOptions.RemoveEmptyEntries);
        int e = Tool.PrintBinNature(i,6,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinNature(int.Parse(str[1]),5,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinNature(int.Parse(str[2]),5,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinZ(int.Parse(str[3]),16,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
    }
    /*2つのレジスタと4bit定数と1つのレジスタ*/
    void ExecuteThreeRegisterAndConst(string s,int i){
        string[] str = s.Split(new string[]{" ","\t",","},StringSplitOptions.RemoveEmptyEntries);
        int e = Tool.PrintBinNature(i,6,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinNature(int.Parse(str[1]),5,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinNature(int.Parse(str[2]),5,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinZ(int.Parse(str[3]),4,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        e = Tool.PrintBinNature(int.Parse(str[4]),5,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        Tool.PrintBinNature(0,7,code);
    }
    /*1つのレジスタ*/
    void ExecuteOneRegister(string s,int i){
        string[] str = s.Split(new string[]{" ","\t",","},StringSplitOptions.RemoveEmptyEntries);
        int e = Tool.PrintBinNature(i,6,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinNature(int.Parse(str[1]),5,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        Tool.PrintBinNature(0,21,code);
    }
    /*2つのレジスタ*/
    void ExecuteTwoRegister(string s,int i){
        string[] str = s.Split(new string[]{" ","\t",","},StringSplitOptions.RemoveEmptyEntries);
        int e = Tool.PrintBinNature(i,6,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinNature(int.Parse(str[1]),5,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinNature(int.Parse(str[2]),5,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        Tool.PrintBinNature(0,16,code);
    }
    /*3つのレジスタ*/
    void ExecuteThreeRegister(string s,int i){
        string[] str = s.Split(new string[]{" ","\t",","},StringSplitOptions.RemoveEmptyEntries);
        int e = Tool.PrintBinNature(i,6,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinNature(int.Parse(str[1]),5,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinNature(int.Parse(str[2]),5,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        e = Tool.PrintBinNature(int.Parse(str[3]),5,code);
        if(e == 1){
            Assembler.errorMSG("OVERFLOW line "+line+"\n");
        }
        else if(e == 2){
            Assembler.errorMSG("MINUS line "+line+"\n");
        }
        Tool.PrintBinNature(0,11,code);
    }
}
/*.align等やラベルの処理*/
class MemoryPlaceManager{
    StreamReader originalcode;
    StreamWriter code;
    StreamWriter label;
    const int MAXLABELNUMBER = 2000;
    long[] data;
    string[] name;
    long memory;
    int labelnumber;
    int line;
    public MemoryPlaceManager(StreamReader f,StreamWriter t){
        originalcode = f;
        code = t;
        data = new long[MAXLABELNUMBER];
        name = new string[MAXLABELNUMBER];
        GetData();
        originalcode.BaseStream.Seek(0,SeekOrigin.Begin);
        WriteData();
    }
    /*ラベルの表す情報を取得*/
    void GetData(){
        labelnumber = 0;
        memory = 4;
        line = 0;
        string s;
        label = new StreamWriter("label");
        //state は0でdata 1でtext
        int state = 0;
        while((s = originalcode.ReadLine()) != null){
            line++;
            if(state == 0){
                string[] str = s.Split(new string[]{" ","\t"},StringSplitOptions.RemoveEmptyEntries);
                switch (str[0]){
                    case ".align":
                        if(str.Length != 1){
                            int align = int.Parse(str[1]);
                            memory = (memory+align-1)/align*align;
                        }
                        else{
                            Assembler.errorMSG("No Number After align line "+line+"\n");
                        }
                        break;
                    case ".SPACE":
                        if(str.Length != 1){
                            memory += int.Parse(str[1]);
                        }
                        else{
                            Assembler.errorMSG("No Number After SPACE line "+line+"\n");
                        }
                        break;
                    case ".text":
                        state = 1;
                        break;
                    case ".long":
                        memory += 4;
                        break;
                    case ".start":
                    case ".data":
                        break;
                    default:
                        if(!ReadData(s)){
                            Assembler.errorMSG("("+s+") in data "+line+"\n");
                        }
                        break;
                }
            }
            else{
                if(s == ".data"){
                    state = 0;
                }
                else if(!ReadData(s)){
                    memory += 4;
                }
            }
        }
        label.Close();
    }
    void WriteData(){
        int state = 0;
        memory = 0;
        line = 0;
        string s;
        bool start = false;
        while((s = originalcode.ReadLine()) != null){
            line++;
            if(state == 0){
                string[] str = s.Split(new string[]{" ","\t"},StringSplitOptions.RemoveEmptyEntries);
                switch (str[0]){
                    case ".align":
                        if(str.Length != 1){
                            int align = int.Parse(str[1]);
                            if(align % 4 == 0){
                                int diff = (int)((memory+align-1)/align*align - memory);
                                for(int i=0;i<diff/4;i++){
                                    code.WriteLine("cat 00000000000000000000000000000000");
                                }
                                memory = (memory+align-1)/align*align;
                            }
                            else{
                                Assembler.errorMSG("align % 4 != 0 "+line+"\n");
                            }
                        }
                        else{
                            Assembler.errorMSG("No Number After align line "+line+"\n");
                        }
                        break;
                    case ".SPACE":
                        if(str.Length != 1){
                            if(int.Parse(str[1]) % 4 == 0){
                                for(int i=0;i<int.Parse(str[1])/4;i++){
                                    code.WriteLine("cat 00000000000000000000000000000000");
                                }
                            }
                            else{
                                Assembler.errorMSG("SPACE % 4 != 0 "+line+"\n");
                            }
                            memory += int.Parse(str[1]);
                        }
                        else{
                            Assembler.errorMSG("No Number After SPACE line "+line+"\n");
                        }
                        break;
                    case ".text":
                        state = 1;
                        break;
                    case ".long":
                        if(str.Length != 1){
                            memory += 4;
                            code.Write("cat ");
                            if(str[1][0] == '$'){
                                long N = SearchData(str[1].Substring(1,str[1].Length-1));
                                if(N == -1){
                                    Assembler.errorMSG("No such label ("+str[1]+") line "+line+"\n");
                                }
                                else{
                                    if(Tool.PrintBinNature(N,32,code) != 0){
                                        Assembler.errorMSG("Fail to print line "+line+"\n");
                                    }
                                    code.WriteLine();
                                }
                            }
                            else if(str[1].Length != 8){
                                Assembler.errorMSG("Need to be 32 bit line "+line+"\n");
                            }
                            else if(Tool.PrintHexademical(str[1],code) != 0){
                                Assembler.errorMSG("Need to be 0-9a-f line "+line+"\n");
                            }
                        }
                        else{
                            Assembler.errorMSG("No value after long line "+line+"\n");
                        }
                        break;
                    case ".start":
                        memory += 4;
                        if(start){
                            Assembler.errorMSG("Two start\n");
                        }
                        start = true;
                        if(str.Length != 1){
                            long N = SearchData(str[1]);
                            if(N == -1){
                                Assembler.errorMSG("No such label ("+str[1]+") line "+line+"\n");
                            }
                            else{
                                code.Write("cat ");
                                if(Tool.PrintBinNature(N,32,code) != 0){
                                    Assembler.errorMSG("Fail to print line "+line+"\n");
                                }
                                code.WriteLine();
                            }
                        }
                        else{
                            Assembler.errorMSG("No value after start line "+line+"\n");
                        }
                        break;
                    case ".data":
                        break;
                    default:
                        if(!HasData(s)){
                            Assembler.errorMSG("("+s+") in data "+line+"\n");
                        }
                        break;
                }
            }
            else{
                if(s == ".data"){
                    state = 0;
                }
                else if(!HasData(s)){
                    Write(s);
                    memory += 4;
                }
            }
        }
    }
    /*ファイルの1列を読み取り中間コードに変換*/
    void Write(string s){
        /*0は通常1は$の後のlabel処理2は%の後の文字処理*/
        int state = 0;
        int f = 0;
        int t = s.Length-1;
        for(int i=0;i<s.Length;i++){
            if(state == 0 && s[i] == '$'){
                code.Write(s.Substring(f,i-f));
                state = 1;
                f = i+1;
            }
            else if(state == 0 && s[i] == '%'){
                code.Write(s.Substring(f,i-f));
                state = 2;
                f = i+1;
            }
            /*ラベルの読み終わり*/
            else if(state == 1 && (i == s.Length-1 || s[i] == '(' || s[i] == '\t' || s[i] == ' ' || s[i] == '#')){
                long N = SearchData(s.Substring(f,i-f+(i == s.Length-1 ? 1 : 0)));
                if(N == -1){
                    /*ラベル出なくても数字のこともある*/
                    if(!('0' <= s[f] && s[f] <= '9') && s[f] != '-'){
                        Assembler.errorMSG("No such label ("+s.Substring(f,i-f)+") line "+line+"\n");
                    }
                }
                else{
                    code.Write(N);
                    f = i + (i == s.Length-1 ? 1 : 0);
                }
                state = 0;
            }
            else if(state == 2 && !(s[i] == 'r' || s[i] == 'R' || s[i] == 'f' || s[i] == 'F' || s[i] == '0')){
                if(!('0' <= s[i] && s[i] <= '9') && s[i-1] == '0'){
                    f = i-1;
                }
                else if(i != s.Length-1 && s[i] == 's' && s[i+1] == 'p'){
                    code.Write("30");
                    f = i+2;
                }
                else if(s[i] == 'd'){
                    code.Write("31");
                    f = i+1;
                }
                else if(i != s.Length-1 && s[i] == 'h' && s[i+1] == 'p'){
                    code.Write("29");
                    f = i+2;
                }
                else if(i != s.Length-1 && s[i] == 'c' && s[i+1] == 'l'){
                    code.Write("28");
                    f = i+2;
                }
                else{
                    f = i;
                }
                state = 0;
            }
            else if(s[i] == '#'){
                t = i-1;
            }
        }
        if(f < s.Length){
            code.WriteLine(s.Substring(f,t-f+1));
        }
        /*ラベルで終わった時*/
        else{
            code.WriteLine();
        }
    }
    /*ファイルの1行の文字列がラベルなのか判定*/
    bool HasData(string s){
        int f = -1;
        int t = -1;
        int state = 0;
        for(int i=0;i<s.Length;i++){
            if(state == 0 && s[i] != ' ' && s[i] != '\t'){
                f = i;
                state = 1;
            }
            else if((state == 0 || state == 1) && s[i] == ':'){
                t = i-1;
                state = 2;
            }
        }
        if(f != -1 && t != -1 && state == 2){
            return true;
        }
        else{
            return false;
        }
    }
    /*ファイルの1行がラベルか判定しそうなら情報を取得*/
    bool ReadData(string s){
        int f = -1;
        int t = -1;
        int state = 0;
        for(int i=0;i<s.Length;i++){
            if(state == 0 && s[i] != ' ' && s[i] != '\t'){
                f = i;
                state = 1;
            }
            else if((state == 0 || state == 1) && s[i] == ':'){
                t = i-1;
                state = 2;
            }
        }
        if(f != -1 && t != -1 && state == 2){
            if(labelnumber >= MAXLABELNUMBER){
                Assembler.errorMSG("Over Label Max\n");
                return true;
            }
            data[labelnumber] = memory;
            name[labelnumber] = s.Substring(f,t-f+1);
            labelnumber++;
            label.WriteLine(memory+" $"+s.Substring(f,t-f+1));
            return true;
        }
        else{
            return false;
        }
    }
    /*ラベルの情報を検索*/
    long SearchData(string s){
        string k = s[s.Length-1] == ',' ? s.Substring(0,s.Length-1) : s;
        for(int i=0;i<labelnumber;i++){
            if(k == name[i]){
                return data[i];
            }
        }
        return -1;
    }
}
