(* Flatten a nested list structure. *)

type 'a node =
    One of 'a
  | Many of 'a node list
;;

let flatten l =
  let rec aux acc = function
    | [] -> acc
    | One head::tail -> aux (head::acc) tail
    | Many head::tail -> aux (aux acc head) tail
  in
  List.rev (aux [] l)
;;

assert(flatten [One `a] = [`a]);;
assert(flatten [Many [One `a; One `b]] = [`a; `b]);;
assert(flatten [One `a; Many [One `b; One `c]] = [`a; `b; `c]);;
