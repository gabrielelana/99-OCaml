(* Count the number of elements in a list *)

let length l =
  let rec _length n = function
    | [] -> n
    | head::tail -> _length (n+1) tail
  in _length 0 l
;;

assert(length [] = 0);;
assert(length [`a] = 1);;
assert(length [`a; `b] = 2);;
assert(length [1; 2; 3] = 3);;
