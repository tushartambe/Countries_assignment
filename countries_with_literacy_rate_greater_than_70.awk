#! /usr/bin/awk
BEGIN{
  FS="|"
  count=0
};
(($10)>70){
  count+=1
print $1 "--" $10
};
END{
  print "Total Countries with literacy rate > 70: " count
};
