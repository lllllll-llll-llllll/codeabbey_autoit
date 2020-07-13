;AUTOIT LANGUAGE
;14.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\14.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", modcalc($inputdata))

func modcalc($a)
   local $z[1]
   $b = $a[0]
   $m = StringTrimLeft($a[ubound($a) - 1], 2)
   for $i = 1 to ubound($a) - 2 step 1
      $b = mod(execute($b & $a[$i]), $m)
   next
   return $b
endfunc
