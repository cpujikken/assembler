let rec itof n = 
	if n = 0 then 0.0 else
	if n < 0 then -.(itof (-n)) else
	if n = 1 then 1.0 else
	if n mod 2 = 0 then 2.0*.(itof (n / 2)) else
	1.0+.(itof(n-1)) 
