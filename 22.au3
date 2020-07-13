;AUTOIT LANGUAGE
;22.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\22.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", printers($inputdata))

func printers($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $p = stringsplit($a[$i], " ", 2)
      $sec = 0
      do
         $sec += 1000
      until int(($sec / $p[0])) + int(($sec / $p[1])) >= $p[2]
      do
         $sec -= 1
      until int(($sec / $p[0]))  + int(($sec / $p[1])) < $p[2]
      _arrayadd($z, $sec + 1)
   next)
   return _arraytostring($z, " ", 1)
endfunc
