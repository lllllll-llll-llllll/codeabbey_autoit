;AUTOIT LANGUAGE
;31.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\31.txt")
$inputdata = FileReadtoarray($input)

msgbox(1, "answer", rotatestr($inputdata))

func rotatestr($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $b = stringsplit($a[$i], " ", 2)
      $c = stringsplit($b[1],   "", 2)
      $b[0] = number($b[0])
      for $ii = 0 to abs($b[0]) - 1 step 1
         if $b[0] > 0 then
            _arraypush($c, $c[0], 0)
         Else
            _arraypush($c, $c[ubound($c) - 1], 1)
         endif
      next
      _arrayadd($z, _arraytostring($c, ""))
   next
   return _arraytostring($z, " ", 1)
endfunc
