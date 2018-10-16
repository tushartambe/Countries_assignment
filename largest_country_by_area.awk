#! /usr/bin/awk
BEGIN{
  FS="|"
  country=""
  largest_area=0
};
($4){
  if($4>largest_area){
    largest_area=$4
    country=$1
  }
};
END{
  print "Largest Country by Area : "country "--"largest_area
};
