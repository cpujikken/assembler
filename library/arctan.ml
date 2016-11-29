let rec arctan t = 
if t < 0 then -.(arctan (-.t)) else
let rec power x n = if n = 0 then 1.0 else x *. (power x (n-1)) in
let rec arctansub x n = if n = 0 then x else (arctansub x (n-1)) +. ((power (-.x) (2*n + 1)) /. (itof (2*n + 1))) in
if t <= ((sqrt 2.0) -. 1.0) then arctansub t 100 else
if t <= 1.0 then 0.785398163397448 -. (arctansub ((1.0-.t)/.(1.0+.t)) 100) else
if t <= ((sqrt 2.0) +. 1.0) then 0.785398163397448 +. (arctansub ((t-.1.0)/.(t+.1.0)) 100) else
1.570796326794897 -. (arctansub (1.0/.t) 100)
