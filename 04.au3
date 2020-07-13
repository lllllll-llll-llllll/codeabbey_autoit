;AUTOIT LANGUAGE
;4.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\4.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", minsoftwo($inputdata))

func minsoftwo($a)
   local $mins[1]
   for $line = 1 To UBound($a) - 1 Step 1
      $n = stringsplit($a[$line], " ", 2)
      _ArrayAdd($mins, _ArrayMin($n, 1))
   next
   return _arraytostring($mins, " ", 1)
endfunc
