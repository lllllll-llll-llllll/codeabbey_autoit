;AUTOIT LANGUAGE
;10.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\10.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", linear($inputdata))

func linear($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $x = stringsplit($a[$i], " ", 2)
      $c = ($x[3] - $x[1]) / ($x[2] - $x[0])
      $b = $x[1] - $c * $x[0]
      _arrayadd($z, "(" & $c & " " & $b & ")")
   next
   return _ArrayToString($z, " ", 1)
endfunc
