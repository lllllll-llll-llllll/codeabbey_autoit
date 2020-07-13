;AUTOIT LANGUAGE
;29.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\29.txt")
$inputdata = stringsplit(FileReadLine($input, 2), " ", 2)

msgbox(1, "answer", bubble($inputdata))

func bubble($a)
   local $b[ubound($a)]
   for $i = 0 to ubound($a) - 1 step 1
      $b[$i] = $i + 1
   next
   $swapped = false
   do
      $swapped = false
      for $i = 0 to ubound($a) - 2 step 1
         $j = $i + 1
         if int($a[$i]) > int($a[$j]) then
            $temp  = $a[$i]
            $a[$i] = $a[$j]
            $a[$j] = $temp
            $swapped = true
            $temp  = $b[$i]
            $b[$i] = $b[$j]
            $b[$j] = $temp
         endif
      next
   until $swapped = false
   return _arraytostring($b, " ")
endfunc
