#! /usr/bin/awk
BEGIN{
     FS="|"

   };
{
  arable+=($12*$4)/100
  total_area+=$4
}

END{
  print "Total arable % =" (arable*100)/total_area

  }
