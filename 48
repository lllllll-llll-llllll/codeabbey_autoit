;AUTOIT LANGUAGE
;48.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\48.txt")
$inputdata = stringsplit(FileReadline($input, 2), " ", 2)

msgbox(1, "answer", collatz($inputdata))

func collatz($a)
   local $z[1]
   for $i = 0 to ubound($a) - 1 step 1
      $x = $a[$i]
      $ii = 0
      while $x <> 1
         $x = mod($x, 2) ? $x * 3 + 1 : $x / 2
         $ii += 1
      wend
      _arrayadd($z, $ii)
   next
   return _ArrayToString($z, " ")
endfunc
