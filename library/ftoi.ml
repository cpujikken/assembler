let rec ftoi x = 
	let rec searchsub y =
		if ((itof y) < x) then (searchsub (2*y)) else y in
	let rec search a b =
		(if (b-a = 1) then 
		(if ((itof b)-.x > x-.(itof a)) then a else b) 			else (if (itof ((a+b)/2)) < x then search ((a+b)/2) b else search a ((a+b)/2))) in
	let z = searchsub 1 in
	search (z/2) z 
		