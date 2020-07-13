;AUTOIT LANGUAGE
;20.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\20.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", getvowels($inputdata))

func getvowels($a)
   local $vowels[1]
   for $i = 1 To UBound($a) - 1 Step 1
      local $r = StringRegExp($a[$i], "[aeiouy]", 3)
      _ArrayAdd($vowels, Ubound($r))
   next
   return _arraytostring($vowels, " ", 1)
endfunc
