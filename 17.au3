;AUTOIT LANGUAGE
;17.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\17.txt")
$inputdata = stringsplit(FileReadline($input, 2), " ", 2)

msgbox(1, "answer", checksum($inputdata))

func checksum($a)
   $b = 0
   for $i = 0 to ubound($a) - 1 step 1
      $b += $a[$i]
      $b *= 113
      $b = mod($b, 10000007)
   next
   return $b
endfunc
