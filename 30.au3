;AUTOIT LANGUAGE
;30.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\30.txt")
$inputdata = stringsplit(FileReadline($input), "", 2)

msgbox(1, "answer", stringrev($inputdata))

func stringrev($a)
   $b = 0
   for $i = 0 to int((ubound($a) / 2) - 1) step 1
      $b = $a[$i]
      $a[$i] = $a[int(ubound($a) - $i - 1)]
      $a[int(ubound($a) - $i - 1)] = $b
   next
   return _ArrayToString($a, "")
endfunc
