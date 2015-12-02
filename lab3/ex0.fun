rec f(n) =
  let val x = n in
  loop (
    x := x+2;
    if x > 3 then exit else nil;
    x := x+3
  );
  x;;


rec output30() =
  let val x = 0 in
  let val y = 0 in
  loop (
    let val z = 0 in 
    loop (
      y := y + 1;
      z := z + 1;
      if z >= 10 then exit else nil
    );
    x := x + 1;
    if x > 2 then exit else nil
  );
  y;;
