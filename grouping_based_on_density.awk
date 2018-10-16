#! /usr/bin/awk

BEGIN{
  FS="|"
  highest=0
  lowest=0
}
(NR==1){
  lowest=$5
}
{
  if($5<lowest)
    lowest=$5

  if($5>highest)
    highest=$5

  countries[NR]=$1
  density[NR]=$5

  # print lowest highest
}

END{
  group1=100
  group2=300
  print "-----------Countries with density less than 100--------------"
  for(j=1;j<=NR;j++){
    if(density[j]<group1){
     print countries[j]
    }
  }

  print "-----------Countries with density between 100 & 300--------------"
  for(j=1;j<=NR;j++){
    if(density[j]>group1 && density[j]<group2){
      print countries[j]
    }
  }

  print "-----------Countries with density more than 300--------------"
  for(j=1;j<=NR;j++){
    if(density[j]>group2){
      print countries[j]
    }
  }
}
