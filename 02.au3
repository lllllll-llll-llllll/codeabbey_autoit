;AUTOIT LANGUAGE
;2.txt contains the copy/pasted 'test data'
#include <File.au3>

$input = fileopen(@scriptdir & "\2.txt")
$inputdata = StringSplit(FileReadLine($input, 2), " ", 2)

msgbox(1, "answer", suminloop($inputdata))

func suminloop($a)
   $total = 0

   for $n in $a
      $total += $n

   next

   return $total
endfunc
