let print_byte i = 
	print_int (i - 48)
let four x = 4*x
let half x = x/2
let print_int i = 
	let z x = () in
	let print_int_sub n x = (
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
