;AUTOIT LANGUAGE
;35.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\35.txt")
$inputdata = FileReadtoarray($input)

msgbox(1, "answer", savings($inputdata))

func savings($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $b = stringsplit($a[$i], " ", 2)
      $y = 0
      $r = 100 + $b[2]
      do
         $b[0] = number(int($b[0] * $r) / 100)
         $y += 1
      until $b[0] >= $b[1]
      _arrayadd($z, $y)
   next
 return _arraytostring($z, " ", 1)
endfunc
