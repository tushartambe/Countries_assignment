#! /usr/bin/awk
BEGIN{
  FS="|"
  
};
($2=="ASIA (EX. NEAR EAST)"){
  asian_countries=asian_coutries"\n"$1
  coast1 +=$6
};

($2=="BALTICS"){
  baltics=baltics"\n"$1
  coast2 +=$6
};

($2=="C.W. OF IND. STATES"){
    ind_states=ind_states"\n"$1
    coast3 +=$6
  };

 ($2=="EASTERN EUROPE"){
    east_europe=east_europe"\n"$1
    coast4 +=$6
  };

 ($2=="LATIN AMER. & CARIB"){
    latin_amer=latin_amer"\n"$1
    coast5 +=$6
  };

($2=="NEAR EAST"){
    north_east=north_east"\n"$1
    coast6 +=$6
  };

($2=="NORTHERN AFRICA"){
    north_africa=north_africa"\n"$1
    coast7 +=$6
  };

($2=="NORTHERN AMERICA"){
    north_amer=north_amer"\n"$1
    coast8 +=$6
  };

($2=="OCEANIA"){
    oceania=oceania"\n"$1
    coast9 +=$6
  };

($2=="SUB-SAHARAN AFRICA"){
    sub_africa=sub_africa"\n"$1
    coast10 +=$6
  };

($2=="WESTERN EUROPE"){
    west_europe=west_europe"\n"$1
    coast11 +=$6
  };

END{
  print "---------------ASIA (EX. NEAR EAST)-------------"coast1
    print asian_countries

  print "---------------BALTICS-------------"coast2
    print baltics

    print "---------------C.W. OF IND. STATES-------------"coast3
      print ind_states

 print "---------------EASTERN EUROPE-------------"coast4
      print east_europe

 print "---------------LATIN AMER. & CARIB-------------"coast5
      print latin_amer

 print "---------------NEAR EAST-------------"coast6
      print north_east

 print "---------------NORTHERN AFRICA-------------"coast7
      print north_africa
 print "---------------NORTHERN AMERICA-------------"coast8
      print north_amer

 print "---------------OCEANIA-------------"coast9
      print oceania

 print "---------------SUB-SAHARAN AFRICA-------------"coast10
    print sub_africa


  print "---------------WESTERN EUROPE-------------"coast11
    print west_europe
};
