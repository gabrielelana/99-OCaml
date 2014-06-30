(* Revese a list *)

let rec reverse ?(reversed=[]) = function
  | [] -> reversed
  | head::tail -> reverse ~reversed:(head::reversed) tail
;;

assert(reverse [] = []);;
assert(reverse [`a] = [`a]);;
assert(reverse [`a; `b] = [`b; `a]);;
assert(reverse [1;2;3;4] = [4;3;2;1]);;
