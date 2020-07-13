;AUTOIT LANGUAGE
;21.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\21.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", arraycounter($inputdata))

func arraycounter($a)
   $b = stringsplit($a[0], " ", 2)
   $c = stringsplit($a[1], " ", 2)
   local $d[$b[1] + 1]
   for $i in $c
      $d[$i] += 1
   next
   return _ArrayToString($d, " ", 1)
endfunc
