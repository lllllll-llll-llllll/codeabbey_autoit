;AUTOIT LANGUAGE
;55.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\55.txt")
$inputdata = stringsplit(filereadline($input, 1), " ", 2)

msgbox(1, "answer", matches($inputdata))

func matches($a)
   local $index[1]
   for $i = 0 to ubound($a) - 1 step 1
      (isdeclared($a[$i])) ? _arrayadd($index, $a[$i]) : assign($a[$i], 1)
   next
   _arraysort($index)
   return _arraytostring(_arrayunique($index), " ", 1)
endfunc
