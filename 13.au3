;AUTOIT LANGUAGE
;13.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\13.txt")
$inputdata = stringsplit(FileReadLine($input, 2), " ", 2)

msgbox(1, "answer", wsd($inputdata))

func wsd($a)
   local $z[1]
   for $i = 0 to ubound($a) - 1 step 1
      $b = stringsplit($a[$i], "", 2)
      local $d[2] = [0, 1]
      For $c in $b
         $d[0] += $d[1] * $c
         $d[1] += 1
      next
      _arrayadd($z, $d[0])
   next
   return _arraytostring($z, " ", 1)
endfunc
