(* Pack consecutive duplicates of list elements into sublists. *)

let pack list =
  let rec f current rest = function
    | [] -> []
    | [head] -> (head::current)::rest
    | head::(next::_ as tail) ->
        if head = next then f(head::current) rest tail else f [] ((head::current)::rest) tail
  in
  List.rev (f [] [] list)
;;

assert(pack [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`d;`e;`e;`e;`e] =
    [[`a;`a;`a;`a];[`b];[`c;`c];[`a;`a];[`d;`d];[`e;`e;`e;`e]]) ;;
