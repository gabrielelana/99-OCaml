(* Insert an element at a given position into a list *)

let rec insert_at n x = function
  | [] -> [x]
  | head::tail as l -> if n <= 1 then x::l else head::insert_at (n-1) x tail
;;

assert(insert_at 1 `a [] = [`a]);;
assert(insert_at 2 `b [`a] = [`a;`b]);;
assert(insert_at 3 `b [`a] = [`a;`b]);;
assert(insert_at 2 `b [`a;`c] = [`a;`b;`c]);;
assert(insert_at 3 `b [`a;`c] = [`a;`c;`b]);;
assert(insert_at 4 `b [`a;`c] = [`a;`c;`b]);;
assert(insert_at 0 `b [`a;`c] = [`b;`a;`c]);;
