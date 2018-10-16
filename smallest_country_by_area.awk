#! /usr/bin/awk
BEGIN{
  FS="|"
  country=""
  #smallest_area=""
#print smallest_area
};

(NR==1){
  smallest_area=$4
} 
($4<smallest_area){
    smallest_area=$4
    country=$1
  };
END{
  print "Smallest Country by area : "country "--"smallest_area
};
