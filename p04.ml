(* Count the number of elements in a list *)

let rec length = function
  | [] -> 0
  | head::tail -> 1 + length tail
;;

assert(length [] = 0);;
assert(length [`a] = 1);;
assert(length [`a; `b] = 2);;
assert(length [1; 2; 3] = 3);;
