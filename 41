;AUTOIT LANGUAGE
;41.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\41.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", medsofthree($inputdata))

func medsofthree($a)
   local $meds[1]
   for $line = 1 To UBound($a) - 1 Step 1
      $b = stringsplit($a[$line], " ", 2)
      _arraydelete($b, _ArrayMinIndex($b, 1))
      _ArrayAdd($meds, _ArrayMin($b, 1))
   next
   return _arraytostring($meds, " ", 1)
endfunc
