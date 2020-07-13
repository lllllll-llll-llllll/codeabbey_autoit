;AUTOIT LANGUAGE
;18.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\18.txt")
$inputdata = FileReadtoarray($input)

msgbox(1, "answer", squirt($inputdata))

func squirt($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $x = stringsplit($a[$i], " ", 2)
      $x[0] = int($x[0])
      $x[1] = int($x[1])
      $r = 1
      for $ii = 1 to $x[1] step 1
         $r = ($r + $x[0] / $r) / 2
      next
      _arrayadd($z, $r)
   next
   return _arraytostring($z, " ")
endfunc
