;AUTOIT LANGUAGE
;15.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\15.txt")
$inputdata = FileRead($input)

msgbox(1, "answer", minmax($inputdata))

func minmax($a)
   $n = stringsplit($a, " ", 2)
   return _ArrayMax($n,1) & " " & _ArrayMin($n,1)
endfunc
