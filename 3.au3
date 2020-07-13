;AUTOIT LANGUAGE
;3.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\3.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", sumsinloop($inputdata))

func sumsinloop($a)
   local $sums[1]
   for $line = 1 To UBound($a) - 1 Step 1
      $n = stringsplit($a[$line], " ", 2)
      _arrayadd($sums, $n[0] + $n[1])
   next
   return _arraytostring($sums, " ", 1)
endfunc
