;AUTOIT LANGUAGE
;81.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\81.txt")
$inputdata = stringsplit(FileReadLine($input, 2), " ", 2)

msgbox(1, "answer", bitcount($inputdata))

func bitcount($a)
   local $z[1]
   for $h = 0 to ubound($a) - 1 step 1
      $n = $a[$h]
      $c = 0
      for $i = 1 to 32 step 1
         $r = bitrotate($n, $i, "D")
         if $r < 0 Then
            $c += 1
         endif
      next
      _arrayadd($z, $c)
   next
   return _arraytostring($z, " ", 1)
endfunc
