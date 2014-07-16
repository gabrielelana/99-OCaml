(* Determine if two positive integer numbers are coprime. *)

(* From problem 33 *)
let rec gcd a b =
  if a < b then gcd b a else
  if b = 0 then a else
  gcd b (a mod b)
;;

let coprime a b = gcd a b = 1;;

assert(coprime 13 27);;
assert(not(coprime 20536 7826));;
