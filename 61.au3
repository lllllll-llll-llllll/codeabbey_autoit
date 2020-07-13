;AUTOIT LANGUAGE
;61.txt contains the copy/pasted 'test data'
#include <File.au3>
#include <Array.au3>

$input = fileopen(@scriptdir & "\61.txt")
$inputdata = stringsplit(FileReadline($input, 2), " ", 2)

msgbox(1, "answer", primes($inputdata))

func primes($a)
   $limit = 3000000
   local $nums[$limit]
   for $i = 2 to sqrt($limit) step 1
      if $nums[$i - 1] <> "" then continueloop
      for $j = $i ^ 2 to $limit step $i
         $nums[$j - 1] = 1
      next
   next
   local $primes[200000]
   $primes[0] = 2
   $count = 1
   for $i = 3 to $limit - 1 step 1
      if $nums[$i - 1] = "" then
         $primes[$count] = $i
         $count += 1
      endif
      if $count = 200000 then exitloop
   next
   local $z[1]
   for $i = 0 to ubound($a) - 1 step 1
      _arrayadd($z, $primes[$a[$i] - 1])
   next
   return _arraytostring($z, " ", 1)
endfunc
