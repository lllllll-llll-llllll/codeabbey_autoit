;AUTOIT LANGUAGE
;49.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\49.txt")
$inputdata = filereadtoarray($input)

msgbox(1, "answer", rps($inputdata))

func rps($a)
   local $z[1]
   for $i = 1 to ubound($a) - 1 step 1
      $playerone = 0
      $playertwo = 0
      $b = $a[$i]
      $b = stringregexpreplace($b, "PP", "00")
      $b = stringregexpreplace($b, "PR", "10")
      $b = stringregexpreplace($b, "PS", "02")
      $b = stringregexpreplace($b, "RR", "00")
      $b = stringregexpreplace($b, "RS", "10")
      $b = stringregexpreplace($b, "RP", "02")
      $b = stringregexpreplace($b, "SS", "00")
      $b = stringregexpreplace($b, "SP", "10")
      $b = stringregexpreplace($b, "SR", "02")
      $playerone = ubound(stringregexp($b, "1", 3))
      $playertwo = ubound(stringregexp($b, "2", 3))
      _arrayadd( $z, ($playerone > $playertwo) ? 1 : 2)
   next
   return _arraytostring($z, " ", 1)
endfunc
