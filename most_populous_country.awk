#! /usr/bin/awk
BEGIN{
  FS="|"
  most_population=0
};
($3){
  if($3>most_population){
    most_population=$3
    country=$1
  }
};
END{
  print "most population Country : "country "--"most_population
};
