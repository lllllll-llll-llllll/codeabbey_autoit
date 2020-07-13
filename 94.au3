;AUTOIT LANGUAGE
;94.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\94.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", fools2014($inputdata))

func fools2014($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $b = execute(_arraytostring(stringsplit($a[$i], " ", 2), "^2 + ") & "^2")
      _arrayadd($z, $b)
   next
   return _arraytostring($z, " ", 1)
endfunc
