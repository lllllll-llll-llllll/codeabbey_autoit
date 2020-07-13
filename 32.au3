;AUTOIT LANGUAGE
;32.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\32.txt")
$inputdata = stringsplit(Filereadline($input, 1), " ", 2)

msgbox(1, "answer", josephus($inputdata))

func josephus($a)
   local $b[$a[0]]
   for $i = 0 to ubound($b) - 1 step 1
      $b[$i] = $i + 1
   next
   do
      for $i = 1 to $a[1] - 1 step 1
         _arraypush($b, $b[0])
      next
      _arraydelete($b,  0)
   until ubound($b) = 1
   return $b[0]
endfunc
