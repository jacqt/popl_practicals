rec range(start, end) =
  if start = end then
    end else
    start : range(start + 1, end);;

rec foldl(reducer, s, list) =
  if list = nil then
    s else
    foldl(reducer, reducer(s, head(list)), tail(list));;

foldl(lambda(a, b) a + b * b, 0, range(1,9));;

