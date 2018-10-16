#! /usr/bin/awk
BEGIN{
  FS="|"
  count=0
};
($2 ~ "ASIA"){
  count+=1
};
END{
  print "Countries in ASIA :" count
};
