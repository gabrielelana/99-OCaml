(* Find the last element of a list. *)

let rec last = function
  | [] -> None
  | [x] -> Some x
  | _::tail -> last tail
;;

assert(last [`a; `b; `c; `d] = Some `d);;
assert(last [] = None);;
