rec range(start, end) =
  if start > end then
    nil else
    start : range(start + 1, end);;

rec foldl(reducer, s, xs) =
  if xs = nil then
    s else
    foldl(reducer, reducer(s, head(xs)), tail(xs));;

foldl(lambda(a, b) a + b * b, 0, range(1,9));;
