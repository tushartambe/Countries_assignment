#! /usr/bin/awk
BEGIN{
  FS="|"
  count=0
};
(($9)>30000){
  count+=1
print $1 "--" $9
};
END{
  print " Total Countries with GDP > 30000:" count
};
