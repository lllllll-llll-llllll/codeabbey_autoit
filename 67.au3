;AUTOIT LANGUAGE
;67.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\67.txt")
$inputdata = FileReadtoarray($input)

msgbox(1, "answer", fib($inputdata))

func fib($a)
   local $z[1]
   local $p[2]
   for $i = 1 to ubound($a) - 1 step 1
      $n = stringright($a[$i], 14)
      if $n < 2 then
         _arrayadd($z, $n)
      else
         $p[0] = 1
         $p[1] = 1
         $s = 2
         do
            $r = stringright(number($p[1] + $p[0]), 14)
            _arrayswap($p, 0, 1)
            $p[1] = $r
            $s += 1
         until $r = $n
         _arrayadd($z, $s)
      endif
   next
 return _arraytostring($z, " ", 1)
endfunc
