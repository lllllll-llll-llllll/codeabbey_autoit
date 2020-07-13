;AUTOIT LANGUAGE
;27.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\27.txt")
$inputdata = stringsplit(FileReadLine($input, 2), " ", 2)

msgbox(1, "answer", bubble($inputdata))

func bubble($a)
   $swapped = false
   $passes = 0
   $swaps = 0
   do
      $passes += 1
      $swapped = false
      for $i = 0 to ubound($a) - 2 step 1
         $j = $i + 1
         if int($a[$i]) > int($a[$j]) then
            $temp  = $a[$i]
            $a[$i] = $a[$j]
            $a[$j] = $temp
            $swapped = true
            $swaps += 1
         endif
      next
   until $swapped = false
   return $passes & " " & $swaps
endfunc
