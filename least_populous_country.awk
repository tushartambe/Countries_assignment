#! /usr/bin/awk
BEGIN{
  FS="|"
  country=""
  #least_population=""
#  print least_population
};

(NR==1){
  least_population=$3
} 
($3<least_population){
    least_population=$3
    country=$1
  };
END{
  print "Least population Country : "country "--"least_population
};
