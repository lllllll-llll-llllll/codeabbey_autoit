;AUTOIT LANGUAGE
;52.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\52.txt")
$inputdata = FileReadtoarray($input)

msgbox(1, "answer", triangletype($inputdata))

func triangletype($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $b = stringsplit($a[$i], " ", 2)
      $s = $b[0] ^ 2 + $b[1] ^ 2
      $l = $b[2] ^ 2
      if     $s > $l Then
         _arrayadd($z, "A")
      elseif $s = $l Then
         _arrayadd($z, "R")
      else
         _arrayadd($z, "O")
      endif
   next
 return _arraytostring($z, " ", 1)
endfunc
