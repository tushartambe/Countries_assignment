#! /usr/bin/awk
BEGIN{
     FS="|"

   };
{
 uniq_continent[$2]

 literacy[$2]+=($10/100)*$3
 population[$2]+=$3
}

END{

for(cont in literacy){
  
print cont "---"(literacy[cont]/population[cont])*100
  }

  }
