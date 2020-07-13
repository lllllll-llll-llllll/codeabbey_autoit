;AUTOIT LANGUAGE
;9txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\9.txt")
$inputdata = FileReadToArray($input)

msgbox(1, "answer", triangle($inputdata))

func triangle($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $b = stringsplit($a[$i], " ", 2)
      if $b[0] + $b[1] > $b[2] and _
         $b[1] + $b[2] > $b[0] and _
         $b[2] + $b[0] > $b[1] then
         _arrayadd($z, 1)
      else
         _arrayadd($z, 0)
      endif
   next
   return _arraytostring($z, " ", 1)
endfunc
