;AUTOIT LANGUAGE
;58.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\58.txt")
$inputdata = stringsplit(filereadline($input, 2), " ", 2)

msgbox(1, "answer", rankofsuit($inputdata))

func rankofsuit($a)
   local $z[1]
   local $rank[13] = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
   local $suit[4] = ["Clubs", "Spades", "Diamonds", "Hearts"]
   for $i = 0 to ubound($a) - 1 step 1
      _arrayadd($z, $rank[mod($a[$i], 13)] & "-of-" & $suit[floor($a[$i] / 13)])
   next
   return _arraytostring($z, " ", 1)
endfunc
