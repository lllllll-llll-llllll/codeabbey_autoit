;AUTOIT LANGUAGE
;26.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\26.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", gcd($inputdata))

func gcd($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $b = stringsplit($a[$i], " ", 2)
      $m = int($b[0]) * int($b[1])
      do
         if int($b[0]) >  int($b[1]) then
            $b[0] -= $b[1]
         else
            $b[1] -= $b[0]
         endif
      until $b[0] =  $b[1]
      _arrayadd($z, "(" & $b[0] & " " & $m / $b[0] & ")")
   next
   return _arraytostring($z, " ", 1)
endfunc
