{POWERED BY IVAN SMIRNOV AND ILYA SHAMOV;}
program rose2_0;
uses GraphABC;
var cr, cg, cb, a, b, j, t, k, w, h, r, u, i, t0, t1, t2, t3, t4, t5: integer;
var steps, x, dx: real;
begin
  SetWindowSize(900, 900);
  j := 2;
  k := 3;
  r := j;
  dx := 1;
  steps := 6.28 / dx;
  x := 0;
  w := (window.width) div 2;
  h := (window.Height) div 2;
  a := 0;
  for i :=  1 to 150 do
    begin
    {Цвет}
      case (i mod 6) of 
        0:  begin {Красный} 
              cr := 255; 
              cg := 0; 
              cb := 0;
              t0 := t0+1;
                cg := t0 * 10; 
                cb := t0 * 10; 
            end;         
           
        1:  begin {Жёлтый}
              cr := 255; 
              cg := 255;  
              cb := 0;
              t1 := t1 + 1;
                cb := t1 * 10; 
            end;

        2:  begin {Зелёный}
              cr := 0; 
              cg := 255; 
              cb := 0; 
              t2 := t2 + 1; 
                cr := t2 * 10;
                cb := t2 * 10; 
            end;

        3:  begin {Голубой}
              cr := 0; 
              cg := 255; 
              cb := 255; 
              t3 := t3 + 1;
                cr := t3 * 10; 
            end;

        4:  begin {Синий}
              cr := 0; 
              cg := 0; 
              cb := 255;
              t4 := t4 + 1; 
                cr := t4 * 10; 
                cg := t4 * 10; 
            end;

        5:  begin {Фиолетовый}
              cr := 255; 
              cg := 0; 
              cb := 255;
              t5 := t5 + 1;
                cg := t5 * 10; 
            end;
            
      end;
      x := x+dx;
      PutPixel(round(w+cos(x) * r), round(h + sin(x) * r),rgb(0, 0, 0));
      drawcircle(round(w + cos(x) * r), round(h+sin(x) * r),i + b);
      for u := 1 to 150 do 
       begin
        setbrushcolor(rgb(cr, cg, cb));
        circle(round(w + cos(x) * r - 3), round(h + sin(x) * r - 3), 8);
        setbrushcolor(rgb(255, 255, 255));
        end;
      a := round(a + 2);
      r := round(r + 4 * 1 / steps);
      b := b + 3
    end;
end.