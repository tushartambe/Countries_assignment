#! /usr/bin/awk
BEGIN{
  FS="|"
  count=0
};
($6 == 0){
  count+=1
  print $1
};
END{
  print "Total countries-  "count 
};
