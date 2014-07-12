(* Create a list containing all integers within a given range. *)

let rec (<->) a b =
  if b > a then a::((a+1) <-> b) else
  if a > b then a::((a-1) <-> b) else
  [a]
;;


assert(0 <-> 0 = [0]);;
assert(0 <-> 1 = [0;1]);;
assert(1 <-> 1 = [1]);;
assert(0 <-> 4 = [0;1;2;3;4]);;
assert(4 <-> 0 = [4;3;2;1;0]);;
assert((-1) <-> (1) = [-1;0;1]);;
