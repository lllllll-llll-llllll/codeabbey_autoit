;AUTOIT LANGUAGE
;57.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\57.txt")
$inputdata = stringsplit(FileReadLine($input, 2), " ", 2)

msgbox(1, "answer", smooth($inputdata))

func smooth($a)
   $b = $a
   for $i = 1 to ubound($a) - 2 step 1
      $b[$i] = ($a[$i - 1] + $a[$i] + $a[$i + 1]) / 3
   next
 return _arraytostring($b, " ")
endfunc
