#! /usr/bin/awk -f
BEGIN{
  FS="|"
  total=0
};
($4){
  total +=$4
  };
END{
  print "Total area :- "total
};
