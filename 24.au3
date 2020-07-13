;AUTOIT LANGUAGE
;24.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\24.txt")
$inputdata = stringsplit(FileReadline($input, 2), " ", 2)

msgbox(1, "answer", neumann($inputdata))

func neumann($a)
   local $z[1]
   for $i = 0 to ubound($a) - 1 step 1
      $x = int($a[$i])
      local $p = [$x]
      $ii = 0
      $r = false
      do
         if $ii then _arrayadd($p, $x)
         $x = int(mod($x ^ 2 / 100, 10000))
         ;_arraydisplay($p)
         if $ii > 0 then
            for $c in $p
               if $c = $x then $r = true
            next
         endif
         $ii += 1
      until $r = true
      _arrayadd($z, ubound($p))
   next
 return _arraytostring($z, " ", 1)
endfunc
