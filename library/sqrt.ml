let sqrt x = 
	let rec sqrtsub a b =
		if (b-.a) < 0.00000000001 then (a+.b)/.2.0 else 
if (a*.a+.2.0*.a*.b+.b*.b)/.4.0 < x then (sqrtsub ((a+.b)/.2.0) b) else (sqrtsub a ((a+.b)/.2.0)) in (sqrtsub 0.0 (if x > 1.0 then x else 1.0))

let rec sqrt x = 
	let rec f y = y-.((y*.y-.x)/.(2.0*.y)) in
	let rec g z = if ((f z)-.z)>=0.0000001 then g (f z) else if ((f z)-.z)>(-.0.0000001) then f z else g (f z) in g x
