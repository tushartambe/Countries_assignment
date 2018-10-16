#! /usr/bin/awk
BEGIN{
  FS="|"
  mortality=0
};
($9>20000){
  if($8>mortality){
    mortality=$8
    country=$1
  }
};
END{
  print "Country : "country "--"mortality
};
