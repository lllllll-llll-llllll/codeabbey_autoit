;AUTOIT LANGUAGE
;28.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\28.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", bmi($inputdata))

func bmi($a)
   local $z[1]
   for $line = 1 To UBound($a) - 1 Step 1
      $b = stringsplit($a[$line], " ", 2)
      $b = $b[0] / $b[1] ^ 2
      if 18.5 > $b then
         _arrayadd($z, "under")
      elseif 18.5 <= $b and $b < 25 then
         _arrayadd($z, "normal")
      elseif 25.0 <= $b and $b < 30 then
         _arrayadd($z, "over")
      elseif 30.0 <= $b then
         _arrayadd($z, "obese")
      endif
   next
   return _arraytostring($z, " ", 1)
endfunc
