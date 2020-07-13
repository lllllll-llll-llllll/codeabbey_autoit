;AUTOIT LANGUAGE
;47.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\47.txt")

msgbox(1, "answer", caesar($input))

func caesar($a)
   $info = stringsplit(filereadline($a, 1), " ", 2)
   $text = ""
   for $i = 0 to $info[0] - 1 step 1
      $text = $text & " " & filereadline($a, $i + 2)
   next
   $text = StringToASCIIArray($text)
   for $i = 0 to ubound($text) - 1 step 1
      if $text[$i] > 64 and $text[$i] < 91 then
         $text[$i] += 26 - $info[1]
         if $text[$i] > 90 then
            $text[$i] -= 26
         endif
      endif
   next
return StringFromASCIIArray($text)
endfunc
