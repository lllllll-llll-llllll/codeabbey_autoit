;AUTOIT LANGUAGE
;11.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\11.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", sumdigits($inputdata))

func sumdigits($a)
   local $digits[1]
   for $i = 1 To UBound($a) - 1 Step 1
      local $b = stringsplit($a[$i], " ", 2)
      $b = Abs($b[0] * $b[1] + $b[2])
      local $d = 0
      while $b <> 0
         $d += Mod($b, 10)
         $b = Int($b / 10)
      wend
      _ArrayAdd($digits, $d)
   next
   return _arraytostring($digits, " ", 1)
endfunc
