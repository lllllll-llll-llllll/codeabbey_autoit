;AUTOIT LANGUAGE
;104.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\104.txt")
$inputdata = filereadtoarray($input)

msgbox(1, "answer", triarea($inputdata))

func triarea($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $b = stringsplit($a[$i], " ", 2)
      $r = ($b[0] * ($b[3] - $b[5]) + $b[2] * ($b[5] - $b[1]) + $b[4] * ($b[1] - $b[3])) / 2
      _arrayadd($z, ($r < 0) ? $r * -1 : $r)
   next
   return _arraytostring($z, " ", 1)
endfunc
