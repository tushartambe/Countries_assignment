#! /usr/bin/awk
BEGIN{
     FS="|"

   };
{
 uniq_continent[$2]

 countries[NR]=$1
 continents[NR]=$2
 literacy[NR]=$10
 population[NR]=$3
}

END{
    for(continent in uniq_continent){
      print "\n \n ----------"continent "--------------"
      literacy_sum=0
      population_sum=0
      for(i=1;i<=NR;i++){
        if(continent==continents[i]){
          literacy_sum+=(literacy[i]/100)*population[i]
          population_sum+=population[i]     
  print countries[i]
        }
    }
    print "Literacy --"(literacy_sum*100)/population_sum
  }


}
