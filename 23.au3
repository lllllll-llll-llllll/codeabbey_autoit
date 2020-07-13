;AUTOIT LANGUAGE
;23.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\23.txt")
$inputdata = stringsplit(FileReadline($input, 1), " ", 2)

msgbox(1, "answer", bubblecheck($inputdata))

func bubblecheck($a)
   _arraypop($a)
   local $b = [0, 0]
   for $i = 0 to ubound($a) - 2 step 1
      $j = $i + 1
      if int($a[$i]) > int($a[$j]) then
         _arrayswap($a, $i, $j)
         $b[0] += 1
      endif
   next
   for $ii = 0 to ubound($a) - 1 step 1
      $b[1] += $a[$ii]
      $b[1] *= 113
      $b[1] = mod($b[1], 10000007)
   next
   return  $b[0] & " " & $b[1]
endfunc
