(* Duplicate the elements of a list *)

let rec duplicate = function
  | [] -> []
  | head::tail -> head::head::duplicate tail
;;

assert(duplicate [] = []);;
assert(duplicate [`a] = [`a;`a]);;
assert(duplicate [`a;`b] = [`a;`a;`b;`b]);;
assert(duplicate [`a;`a] = [`a;`a;`a;`a]);;
assert(duplicate [`a;`b;`c] = [`a;`a;`b;`b;`c;`c]);;
