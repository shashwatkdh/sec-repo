function peer1
{
flag=0
while [[ $flag -eq 0 ]]
do
  printf "\n guess no. of files"
  read inp
  c=$( find ~/ -type f| wc -l)
  if [[ $inp -eq $c ]]
  then
    printf "\n Congrats"
    flag=1
    break
    else
    d=$(expr $inp - $c)
    if [[ $d -lt 0 ]]
    then
       let d=$d\*-1
    fi
    if [[ $d -lt 10 ]]
    then
      printf "\n u r close to ans"
    elif [[ $d -ge 10 ]] && [[ $d -lt 100 ]]
    then
      printf "\n somewhat close"
    else
      printf "\n ur guess is too high"
   fi
  fi
done
}

peer1

