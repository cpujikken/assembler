let sin t = 
    let x = t -. (itof (ftoi (t /. 6.283185307179586))) *. 6.283185307179586 in
	(x*.x*.x*.x*.x/.120.0) -. (x*.x*.x*.x*.x*.x*.x/.5040.0) -. (x*.x*.x/.6.0) +. x 

let sin t = 
	let z = (itof (ftoi (t /. 0.785398163397448))) in 
	let y = t -. z *. 0.785398163397448 in
	let sinsub x = (x*.x*.x*.x*.x/.120.0) -. (x*.x*.x*.x*.x*.x*.x/.5040.0) -. (x*.x*.x/.6.0) +. x in
	let cossub x = (x*.x*.x*.x*.x*.x/.40320.0) -. (x*.x*.x*.x*.x*.x/.720.0) +. (x*.x*.x*.x/.24.0) -. (x*.x/.2.0) +. 1.0 in
	match (ftoi (t /. 0.785398163397448)) mod 8 with
	| 0 -> sinsub y
	| 1 -> cossub (0.785398163397448-.y)
	| 2 -> cossub y
	| 3 -> sinsub (0.785398163397448-.y)
	| 4 -> -.(sinsub y)
	| 5 -> -.(cossub (0.785398163397448-.y))
	| 6 -> -.(cossub y)
	| 7 -> -.(sinsub (0.785398163397448-.y))
(*-π < x < π |sinx| < |x| 式との誤差 x^6*)
