;AUTOIT LANGUAGE
;44.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\44.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", doubledice($inputdata))

func doubledice($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $b = stringsplit($a[$i], " ", 2)
      _arrayadd($z, mod($b[0], 6) + mod($b[1], 6) + 2)
   next
   return _arraytostring($z, " ", 1)
endfunc
