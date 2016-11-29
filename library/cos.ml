let cos t = 
    let x = t -. (ftoi (t /. 6.283185307179586)) *. 6.283185307179586 in
	(x*.x*.x*.x*.x*.x/40320.0) -. (x*.x*.x*.x*.x*.x/720.0) +. (x*.x*.x*.x/.24.0) -. (x*.x/.2.0) +. 1.0

let rec cos t = 
	let z = (itof (ftoi (t /. 0.785398163397448))) in 
	let y = t -. z *. 0.785398163397448 in
	let sinsub x = (x*.x*.x*.x*.x/.120.0) -. (x*.x*.x*.x*.x*.x*.x/.5040.0) -. (x*.x*.x/.6.0) +. x in
	let cossub x = (x*.x*.x*.x*.x*.x/.40320.0) -. (x*.x*.x*.x*.x*.x/.720.0) +. (x*.x*.x*.x/.24.0) -. (x*.x/.2.0) +. 1.0 in
	if (ftoi (t /. 0.785398163397448)) mod 8 = 0 then cossub y
	else if (ftoi (t /. 0.785398163397448)) mod 8 = 1 then sinsub (0.785398163397448-.y)
	else if (ftoi (t /. 0.785398163397448)) mod 8 = 2 then -.(sinsub y)
	else if (ftoi (t /. 0.785398163397448)) mod 8 = 3 then -.(cossub (0.785398163397448-.y))
	else if (ftoi (t /. 0.785398163397448)) mod 8 = 4 then -.(cossub y)
	else if (ftoi (t /. 0.785398163397448)) mod 8 = 5 then -.(sinsub (0.785398163397448-.y))
	else if (ftoi (t /. 0.785398163397448)) mod 8 = 6 then sinsub y
	else cossub (0.785398163397448-.y)
