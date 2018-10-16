#! /usr/bin/awk
BEGIN{
  FS="|"
  count=0
};
($9>20000 && ($10)<90){
  count+=1
print $1 "--" $9 "--" $10
};
END{
  print "Total Countries -- " count
};
