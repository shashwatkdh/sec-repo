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
   # d=$(expr $inp - $c)
    if [[ $inp -lt $c ]]
    then
      echo "too less"
      else
         echo "too high"
    fi
   
  fi
done
}

peer1

