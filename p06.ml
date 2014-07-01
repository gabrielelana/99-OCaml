(* Find out whether a list is a palindrome *)

let is_palindrome l =
  l = List.rev l
;;

assert(is_palindrome []);;
assert(is_palindrome [1; 1]);;
assert(is_palindrome [1; 2; 2; 1]);;
