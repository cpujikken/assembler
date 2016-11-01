let cos t = 
    let x = t -. (ftoi (t /. 6.283185307179586)) *. 6.283185307179586 in
	(x*.x*.x*.x*.x*.x/40320.0) -. (x*.x*.x*.x*.x*.x/720.0) +. (x*.x*.x*.x/.24.0) -. (x*.x/.2.0) +. 1.0

let cos t = 
	let z = (itof (ftoi (t /. 0.785398163397448))) in 
	let y = t -. z *. 0.785398163397448 in
	let sinsub x = (x*.x*.x*.x*.x/.120.0) -. (x*.x*.x*.x*.x*.x*.x/.5040.0) -. (x*.x*.x/.6.0) +. x in
	let cossub x = (x*.x*.x*.x*.x*.x/.40320.0) -. (x*.x*.x*.x*.x*.x/.720.0) +. (x*.x*.x*.x/.24.0) -. (x*.x/.2.0) +. 1.0 in
	match (ftoi (t /. 0.785398163397448)) mod 8 with
	| 0 -> cossub y
	| 1 -> sinsub (0.785398163397448-.y)
	| 2 -> -.(sinsub y)
	| 3 -> -.(cossub (0.785398163397448-.y))
	| 4 -> -.(cossub y)
	| 5 -> -.(sinsub (0.785398163397448-.y))
	| 6 -> sinsub y
	| 7 -> cossub (0.785398163397448-.y)
