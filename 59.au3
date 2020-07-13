;AUTOIT LANGUAGE
;59.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\59.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", bullcows($inputdata))

func bullcows($a)
   local $z[1]
   $c = stringsplit($a[0], " ", 2)
   $c = stringsplit($c[0], "", 2)
   $b = stringsplit($a[1], " ", 2)
   for $i = 0 to ubound($b) - 1 step 1
      $correct = 0
      $incorrect = 0
      $g = stringsplit($b[$i], "", 2)
      for $w = 0 to 3 step 1
         for $y = 0 to 3 step 1
            if $g[$w] = $c[$w] then
               $correct += 1
               exitloop
            endif
            if $g[$y] = $c[$w] then
               $incorrect += 1
            endif
         next
      next
      _arrayadd($z, $correct & "-" & $incorrect)
   next
   return _arraytostring($z, " ", 1)
endfunc
