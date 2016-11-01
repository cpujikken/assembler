float sqrt(float f){
    float ans;
    if(SIGN(f) == 1){
        return NAN;
    }
    SIGN(ans) = 0;
    E(ans) = (E(f)-127)/2+127;
    for(int i=0;i<23;i++){
        M(ans,i) = 0;
    }
    for(int i=0;i<23;i++){
        M(ans,i) = 1;
        if(FMUL(ans,ans) > f){
            M(ans,i) = 0;
        }
    }
}