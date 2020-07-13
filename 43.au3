;AUTOIT LANGUAGE
;43.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\43.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", dice($inputdata))

func dice($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      _arrayadd($z, int($a[$i] * 6) + 1)
   next
   return _arraytostring($z, " ", 1)
endfunc
