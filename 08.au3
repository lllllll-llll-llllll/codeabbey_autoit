;AUTOIT LANGUAGE
;8.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\8.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", arithseq($inputdata))

func arithseq($a)
   local $sums[1]
   for $i = 1 to ubound($a) - 1 step 1
      local $b = stringsplit($a[$i], " ", 2)
      local $c = 0
      for $ii = $b[0] to $b[0] + $b[1] * ($b[2] - 1) step $b[1]
         $c += $ii
      next
      _ArrayAdd($sums, $c)
   next
   return _arraytostring($sums, " ", 1)
endfunc
