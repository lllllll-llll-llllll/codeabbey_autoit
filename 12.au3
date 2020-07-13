;AUTOIT LANGUAGE
;12.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\12.txt")
$inputdata = FileReadtoarray($input)

msgbox(1, "answer", timedif($inputdata))

func timedif($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
       $t = stringsplit($a[$i], " ", 2)
       $t[0] *= 86400
       $t[1] *= 3600
       $t[2] *= 60
       $t[4] *= 86400
       $t[5] *= 3600
       $t[6] *= 60
       $t[0] = ($t[4] + $t[5] + $t[6] + $t[7]) - ($t[0] + $t[1] + $t[2] + $t[3])
       $t[1] = floor($t[0] / 86400)
       $t[0] -= $t[1] * 86400
       $t[2] = floor($t[0] / 3600)
       $t[0] -= $t[2] * 3600
       $t[3] = floor($t[0] / 60)
       $t[0] -= $t[3] * 60
       _arrayadd($z, "(" & $t[1] & " " & $t[2] & " " & $t[3] & " " & $t[0] & ")")
   next
   return _ArrayToString($z, " ")
endfunc
