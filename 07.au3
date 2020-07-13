;AUTOIT LANGUAGE
;7.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\7.txt")
$inputdata = StringSplit(FileRead($input), " ", 2)

msgbox(1, "answer", tocelsius($inputdata))

func tocelsius($a)
   local $celsius[1]
   for $i = 1 To UBound($a) - 1 Step 1
      $c = round(($a[$i] - 32) * 5 / 9)
      _ArrayAdd($celsius, $c)
   next
   return _arraytostring($celsius, " ", 1)
endfunc
