let rec itof n = if n < 0 then -.(itof (-n)) else
	let rec loopa i j k =
		if k*4/2 > i then j else loopa i (j+.j) (k*4/2) in
	let rec loopb i k =
		if k*4/2 > i then k else loopb i (k*4/2) in
	let rec itofsub i j k =
		if i >= k then j +. (if k = 1 then 0.0 else (itofsub (i-k) (j/.2.) (k/2)))
		else (if k = 1 then 0.0 else (itofsub i (j/.2.) (k/2))) in
	itofsub n (loopa n 1. 1) (loopb n 1) in itof 2;
let rec ftoi x = 
	let rec searchsub y =
		if ((itof y) < x) then (searchsub (y*4/2)) else y in
	let rec search a b =
		(if (b-a = 1) then 
		(if ((itof b)-.x > x-.(itof a)) then a else b) 			else (if (itof ((a+b)/2)) < x then search ((a+b)/2) b else search a ((a+b)/2))) in
	let z = searchsub 1 in
	search (z/2) z in ftoi 2.;
let rec floor x = 
	let rec searchsub y =
		if ((itof y) < x) then (searchsub (y*4/2)) else y in
	let rec search a b =
		(if (b-a = 1) then 
		a			else (if (itof ((a+b)/2)) <= x then search ((a+b)/2) b else search a ((a+b)/2))) in
	let z = searchsub 1 in
	search (z/2) z in floor 2.0;
let rec sqrt x = 
	let rec f y = y-.((y*.y-.x)/.(2.0*.y)) in
	let rec g z = if ((f z)-.z)>=0.0000001 then g (f z) else (if ((f z)-.z)>(-.0.0000001) then f z else g (f z)) 
    in (g x) in sqrt 2.0;
let rec arctan t = 
    if t < 0. then -.(arctan (-.t)) else
    let rec power x n = if n = 0 then 1.0 else x *. (power x (n-1)) in
    let rec arctansub x n = if n = 0 then x else (arctansub x (n-1)) +. ((power (-.x) (2*n + 1)) /. (itof (2*n + 1))) in
    if t <= ((sqrt 2.0) -. 1.0) then arctansub t 100 else
    if t <= 1.0 then 0.785398163397448 -. (arctansub ((1.0-.t)/.(1.0+.t)) 100) else
    if t <= ((sqrt 2.0) +. 1.0) then 0.785398163397448 +. (arctansub ((t-.1.0)/.(t+.1.0)) 100) else
    1.570796326794897 -. (arctansub (1.0/.t) 100) in arctan 1.0;
let rec cos t = 
	let z = (itof (floor (t /. (0.785398163397448*.8.0)))) in 
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
	let z = (itof (floor (t /. (0.785398163397448 *. 8.0)))) in 
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
let rec print_int i = 
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
let rec print_newline _ = print_byte 10 in print_newline ();
let rec print_space _ = print_byte 32 in print_space ();
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