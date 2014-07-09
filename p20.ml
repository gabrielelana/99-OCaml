(* Remove the K'th element from a list *)

let rec remove_at n = function
  | [] -> []
  | head::tail -> if n = 1 then tail else head::remove_at (n-1) tail
;;

assert(remove_at 2 [] = []);;
assert(remove_at 2 [`a] = [`a]);;
assert(remove_at 2 [`a;`b] = [`a]);;
assert(remove_at 2 [`a;`b;`c] = [`a;`c]);;
assert(remove_at 1 [`a;`b;`c] = [`b;`c]);;
assert(remove_at 0 [`a;`b;`c] = [`a;`b;`c]);;
assert(remove_at (-1) [`a;`b;`c] = [`a;`b;`c]);;
