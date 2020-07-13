;AUTOIT LANGUAGE
;6.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\6.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", rounding($inputdata))

func rounding($a)
   local $rounds[1]
   for $line = 1 To UBound($a) - 1 Step 1
      $n = stringsplit($a[$line], " ", 2)
      _ArrayAdd($rounds, round($n[0] / $n[1]))
   next
   return _arraytostring($rounds, " ", 1)
endfunc
