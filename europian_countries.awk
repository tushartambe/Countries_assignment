#! /usr/bin/awk
BEGIN{
  FS="|"
  count=0
};
($2 ~ "EUROPE"){
  count+=1
};
END{
  print "Countries in EUROPE :" count
};
