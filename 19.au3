;AUTOIT LANGUAGE
;19.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\19.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", brackets($inputdata))

func brackets($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $result = 0
      $a[$i] = StringRegExpReplace($a[$i], "[\w+\-/*\^%[:space:]]", "")
      do
         $len = stringlen($a[$i])
         $a[$i] = StringRegExpReplace($a[$i], "<>", "",1)
         $a[$i] = StringRegExpReplace($a[$i], "\(\)", "",1)
         $a[$i] = StringRegExpReplace($a[$i], "\[]", "",1)
         $a[$i] = StringRegExpReplace($a[$i], "\{}", "",1)
      until stringlen($a[$i]) = $len
      if $len = 0 then $result = 1
      _arrayadd($z, $result)
   next
   return _arraytostring($z, " ", 1)
endfunc
