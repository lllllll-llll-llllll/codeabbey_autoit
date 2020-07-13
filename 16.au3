;AUTOIT LANGUAGE
;16.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\16.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", arraysum($inputdata))

func arraysum($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $b = stringsplit($a[$i], " ", 2)
      $c = 0
      for $ii = 0 to ubound($b) - 2 step 1
         $c += $b[$ii]
      next
      _arrayadd($z, round($c / (ubound($b) - 1)))
   next
   return _arraytostring($z, " ", 1)
endfunc
