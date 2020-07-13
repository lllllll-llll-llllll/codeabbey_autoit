;AUTOIT LANGUAGE
;25.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\25.txt")
$inputdata = FileReadtoarray($input)

msgbox(1, "answer", lcon($inputdata))

func lcon($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $b = stringsplit($a[$i], " ", 2)
      for $ii = 1 to $b[4]
         $b[3] = mod($b[0] * $b[3] + $b[1], $b[2])
      next
      _arrayadd($z, $b[3])
   next
 return _arraytostring($z, " ", 1)
endfunc
