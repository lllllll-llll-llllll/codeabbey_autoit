;AUTOIT LANGUAGE
;50.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\50.txt")
$inputdata = FileReadtoarray($input)

msgbox(1, "answer", palindrome($inputdata))

func palindrome($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $a[$i] = _arraytostring(stringregexp(stringlower($a[$i]), "[a-z]", 3), "")
      _arrayadd($z, ($a[$i] = stringreverse($a[$i]) ? "Y" : "N"))
   next
   return _arraytostring($z, " ", 1)
endfunc
