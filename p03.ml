(* Find the k'th element of a list *)

let rec element_at k = function
  | [] -> None
  | head::tail ->
      if k<=0 then None else
      if k>List.length(head::tail) then None else
      if k=1 then Some head else element_at (k-1) tail
;;

assert (element_at 1 [`a; `b; `c; `d; `e] = Some `a);;
assert (element_at 3 [`a; `b; `c; `d; `e] = Some `c);;
assert (element_at 3 [`a] = None);;
assert (element_at 1 [`a] = Some `a);;
assert (element_at 0 [`a] = None);;
assert (element_at (-1) [`a] = None);;
