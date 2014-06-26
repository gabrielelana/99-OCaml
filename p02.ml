(* Find the last but one element of a list. *)

let rec last_two = function
  | [] | [_] -> None
  | [x;y] -> Some (x,y)
  | _::tail -> last_two tail
;;

assert(last_two [`a; `b; `c; `d] = Some (`c,`d));;
assert(last_two [`a] = None);;
assert(last_two [] = None);;
