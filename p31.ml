(* Determine whether a given integer number is prime. *)

let is_prime n =
  let n = max n (-n) in
  let divides x y = (y mod x) = 0 in
  let rec aux d = d * d > n || not (divides d n) && aux (d+1) in
  n > 1 && aux 2
;;

assert(is_prime (-2));;
assert(not(is_prime (-1)));;
assert(not(is_prime 0));;
assert(not(is_prime 1));;
assert(is_prime 2);;
assert(is_prime 3);;
assert(not(is_prime 4));;
assert(is_prime 5);;
assert(not(is_prime 6));;
assert(is_prime 7);;
assert(not(is_prime 8));;
assert(not(is_prime 9));;
assert(not(is_prime 10));;
assert(is_prime 977);;
