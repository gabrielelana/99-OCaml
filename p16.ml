(* Drop every N'th element from a list *)

let drop l n =
  let rec _drop i = function
    | [] -> []
    | head::tail -> if i = n then _drop 1 tail else head::_drop (i+1) tail
  in
  _drop 1 l
;;

assert(drop [] 0 = []);;
assert(drop [] 3 = []);;
assert(drop [`a] 3 = [`a]);;
assert(drop [`a;`b] 3 = [`a;`b]);;
assert(drop [`a;`b;`c] 3 = [`a;`b]);;

assert(drop [`a;`b;`c] 0 = [`a;`b;`c]);;
assert(drop [`a;`b;`c] 1 = []);;
assert(drop [`a;`b;`c] 2 = [`a;`c]);;
assert(drop [`a;`b;`c;`d] 2 = [`a;`c]);;
assert(drop [`a;`b;`c;`d;`e;`f] 3 = [`a;`b;`d;`e]);;
