let rec float_of_int n = if n < 0 then -.(float_of_int (-n)) else
	let rec loopa i j k =
		if k*2 > i then j else loopa i (j+.j) (k*2) in
	let rec loopb i k =
		if k*2 > i then k else loopb i (k*2) in
	let rec float_of_intsub i j k =
		if i >= k then j +. (if k = 1 then 0.0 else (float_of_intsub (i-k) (j/.2.) (k/2)))
		else (if k = 1 then 0.0 else (float_of_intsub i (j/.2.) (k/2))) in
	float_of_intsub n (loopa n 1. 1) (loopb n 1) in float_of_int 2;
let rec int_of_float x = if x < 0. then -(int_of_float (-.x)) else
	let rec searchsub y x =
		if ((float_of_int y) < x) then (searchsub (y*2) x) else y in
	let rec search a b x =
		(if (b-a = 1) then 
		(if ((float_of_int b)-.x > x-.(float_of_int a)) then a else b) 			else (if (float_of_int (a/2+b/2)) < x then search (a/2+b/2) b x else search a (a/2+b/2) x)) in
	let z = searchsub 1 x in
	search (z/2) z x in int_of_float 2.;
let rec print_int i = 
	if i < 0 then (print_byte 45;print_int (- i)) else
	let rec four x = x*4 in
	let rec half x = x/2 in
	let rec z x = () in
	let rec print_int_sub n x = (
		if x > n then (print_byte 48;n) 
		else if x + x > n then (print_byte 49;n - x)
		else if x + x + x > n then (print_byte 50;n - x - x)
		else if four x > n then (print_byte 51;n - x - x - x)
		else if (four x) + x > n then (print_byte 52;n - (four x))
		else if (four x) + x + x > n then (print_byte 53;n - (four x) - x)
		else if (four x) + x + x + x > n then (print_byte 54;n - (four x) - x - x)
		else if (half (four (four x))) > n then (print_byte 55;n - (four x) - x - x - x)
		else if (half (four (four x))) + x > n then (print_byte 56;n - (half (four (four x))))
		else (print_byte 57;n - (half (four (four x))) - x) )in
	let rec print_loop n x =
		if (half (four (four x))) + x + x > n then print_int_sub n x 
		else print_int_sub (print_loop n ((half (four (four x))) + x + x)) x in z (print_loop i 1)
    in print_int 3;
let rec read_int _ =
	let rec skip _ = 
	let x = read_char () in
	if x <= 32 then skip ()
	else x in
	let rec read_int_sub i j x =
	if x = 45 then read_int_sub i 1 (read_char ()) else
	if x = 255 then (if j = 1 then -i else i) else
	if x <= 32 then (if j = 1 then -i else i) else
	read_int_sub (i * 10 + x - 48) j (read_char ())
	in read_int_sub 0 0 (skip ()) in read_int ();
let rec read_float _ =
	let rec skip _ = 
	let x = read_char () in
	if x <= 32 then skip ()
	else x in 
	let rec read_float_sub i j k x =
	if x = 45 then read_float_sub i j (k+1) (read_char ()) else
	if x = 255 then (if k = 3 then -.((float_of_int i)/.j) else if k = 1 then -.((float_of_int i)/.j) else ((float_of_int i)/.j)) else
	if x <= 32 then (if k = 3 then -.((float_of_int i)/.j) else if k = 1 then -.((float_of_int i)/.j) else ((float_of_int i)/.j)) else
	if x = 46 then read_float_sub i j (k+2) (read_char ()) else
	read_float_sub (i * 10 + x - 48) (if k >= 2 then j*.10. else j) k (read_char ())
	in read_float_sub 0 1. 0 (skip ()) in read_float (); 
let rec print_newline _ = print_byte 10 in print_newline ();
let rec print_space _ = print_byte 32 in print_space ();
let rec print_char x = print_byte x in print_char 48;
let rec floor x = if x >= 0. then
	let rec searchsub y x =
		if y < x then (searchsub (y*.2.) x) else y in
	let rec searchsubsub y t x =
		if y < x then (searchsubsub (y*.2.) (t+1) x) else t in
	let rec search a b t x =
		(if t = 0 then 
		a			else (if (a+.b)/.2. <= x then search ((a+.b)/.2.) b (t-1) x else search a ((a+.b)/.2.) (t-1) x)) in
	let z = searchsub 1.0 x in
	search 0. (z*.2.) ((searchsubsub 1.0 0 x)+1) x
	else 
	let rec searchsub y x =
		if y < -.x then (searchsub (y*.2.) x) else y in
	let rec searchsubsub y t x =
		if y < -.x then (searchsubsub (y*.2.) (t+1) x) else t in
	let rec search a b t x =
		(if t = 0 then 
		a			else (if (a+.b)/.2. < -.x then search ((a+.b)/.2.) b (t-1) x else search a ((a+.b)/.2.) (t-1) x)) in
	let z = searchsub 1.0 x in
	-.((search 0. (z*.2.) ((searchsubsub 1.0 0 x)+1) x) +. 1.)
	in floor 2.0;
let rec sqrt x = 
	if x < 1. then x*.(sqrt (1./.x)) else
	let rec f y x = y-.((y*.y-.x)/.(2.0*.y)) in
	let rec g z x = let fz = (f z x) in if (if z*.z > x then z*.z -. x else x -. z*.z) <= (if fz*.fz > x then fz*.fz -. x else x -. fz*.fz) then fz else g fz x 
    in (g x x) in sqrt 2.0;
let rec atan t = 
    if t < 0. then -.(atan (-.t)) else
    let rec atansub x = x -. x*.x*.x/.3.0 +. x*.x*.x*.x*.x/.5.0 -. x*.x*.x*.x*.x*.x*.x/.7.0 +. x*.x*.x*.x*.x*.x*.x*.x*.x/.9.0 -. x*.x*.x*.x*.x*.x*.x*.x*.x*.x*.x/.11.0 +. x*.x*.x*.x*.x*.x*.x*.x*.x*.x*.x*.x*.x/.13.0 in
    if t <= ((sqrt 2.0) -. 1.0) then atansub t else
    if t <= 1.0 then 0.785398163397448 -. (atansub ((1.0-.t)/.(1.0+.t))) else
    if t <= ((sqrt 2.0) +. 1.0) then 0.785398163397448 +. (atansub ((t-.1.0)/.(t+.1.0))) else
    1.570796326794897 -. (atansub (1.0/.t)) in atan 1.0;
let rec cos t = 
	let z = (floor (t /. (0.785398163397448*.8.0))) in 
	let y = t -. z *. 0.785398163397448 *. 8.0 in
	let rec sinsub x = (x*.x*.x*.x*.x/.120.0) -. (x*.x*.x*.x*.x*.x*.x/.5040.0) -. (x*.x*.x/.6.0) +. x in
	let rec cossub x = (x*.x*.x*.x*.x*.x/.40320.0) -. (x*.x*.x*.x*.x*.x/.720.0) +. (x*.x*.x*.x/.24.0) -. (x*.x/.2.0) +. 1.0 in
	if y < 0.785398163397448 then cossub y
	else if y < 0.785398163397448*.2.0 then sinsub (0.785398163397448*.2.0-.y)
	else if y < 0.785398163397448*.3.0 then -.(sinsub (y-.0.785398163397448*.2.0))
	else if y < 0.785398163397448*.4.0 then -.(cossub (0.785398163397448*.4.0-.y))
	else if y < 0.785398163397448*.5.0 then -.(cossub (y-.0.785398163397448*.4.0))
	else if y < 0.785398163397448*.6.0 then -.(sinsub (0.785398163397448*.6.0-.y))
	else if y < 0.785398163397448*.7.0 then sinsub (y-.0.785398163397448*.6.0)
	else cossub (0.785398163397448*.8.0-.y) in cos 1.0;
let rec sin t = 
	let z = (floor (t /. (0.785398163397448 *. 8.0))) in 
	let y = t -. z *. 0.785398163397448 *. 8.0 in
	let rec sinsub x = (x*.x*.x*.x*.x/.120.0) -. (x*.x*.x*.x*.x*.x*.x/.5040.0) -. (x*.x*.x/.6.0) +. x in
	let rec cossub x = (x*.x*.x*.x*.x*.x/.40320.0) -. (x*.x*.x*.x*.x*.x/.720.0) +. (x*.x*.x*.x/.24.0) -. (x*.x/.2.0) +. 1.0 in
	if y < 0.785398163397448 then sinsub y else
	if y < 0.785398163397448*.2.0 then cossub (0.785398163397448*.2.0-.y) else
	if y < 0.785398163397448*.3.0 then cossub (y-.0.785398163397448*.2.0) else
	if y < 0.785398163397448*.4.0 then sinsub (0.785398163397448*.4.0-.y) else
	if y < 0.785398163397448*.5.0 then -.(sinsub (y -. 0.785398163397448*.4.0)) else
	if y < 0.785398163397448*.6.0 then -.(cossub (0.785398163397448*.6.0-.y)) else
	if y < 0.785398163397448*.7.0 then -.(cossub (y -. 0.785398163397448*.6.0)) else
	-.(sinsub (0.785398163397448*.8.0-.y)) in sin 1.0;

let rec fiszero x =
	let eps = 0.000001 in
 		if x  > -eps then
 			if x < eps then true else false
		else false
 	in fiszero 0.;
let rec fispos x = x > 0.0 in fispos 0.0;
let rec fisneg x = x < 0.0 in fisneg 0.0;
let rec fsqr x = x *. x in fsqr 0.0;
let rec fhalf x = x /. 2.0 in fhalf 0.0;
let rec fless x y = x < y in fless 0.0 0.0;
let rec create_int_array cnt value =
   let rec copy_loop arr cnt value =
       if cnt < 0 then arr
       else
           (
           arr.(cnt) <- value;
           copy_loop arr (cnt - 1) value
           )
   in
   let ret = [cnt]
   in
       copy_loop ret cnt value
in
   create_int_array 10 3;let rec create_float_array cnt value =
   let rec copy_loop arr cnt value =
       if cnt < 0 then arr
       else
           (
           arr.(cnt) <- value;
           copy_loop arr (cnt - 1) value
           )
   in
   let ret = [cnt]
   in
       copy_loop ret cnt value
in
   create_float_array 10 0.1
