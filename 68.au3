;AUTOIT LANGUAGE
;68.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\68.txt")
$inputdata = FileReadtoarray($input)

msgbox(1, "answer", bicycle($inputdata))

func bicycle($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $b = stringsplit($a[$i], " ", 2)
      _arrayadd($z, ($b[0] * $b[1]) / ($b[1] + $b[2]))
   next
 return _arraytostring($z, " ", 1)
endfunc
