#! /usr/bin/awk
BEGIN{
  FS="|"
  coastline=0
};
($6){
  if($6>coastline){
    coastline=$6
    country=$1
  }
};
END{
  print "Most surrounded by water : "country "--"coastline
};
