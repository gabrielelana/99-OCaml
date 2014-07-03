(* Eliminate consecutive duplicates of list elements *)

let rec compress = function
  | head::(next::_ as tail) -> if head = next then compress tail else head::(compress tail)
  | smaller -> smaller
;;


assert(compress [] = []);;
assert(compress [`a;`a] = [`a]);;
assert(compress [`a;`a;`a] = [`a]);;
assert(compress [`a;`a;`a;`b] = [`a;`b]);;
assert(compress [`a;`a;`a;`b;`b] = [`a;`b]);;
assert(compress [`a;`a;`a;`b;`a;`b] = [`a;`b;`a;`b]);;
assert(compress [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e] = [`a;`b;`c;`a;`d;`e]);;
