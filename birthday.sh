#!/bin/sh

#################################################### FX ###################################################################################

configFile=/ecomm/digisales/spreadsv/autorun_spreadreport_backup/autosys-job-scripts/birthday_fx.cfg

export emailto_team="GBMTSIFX@rbs.com,CIBIndiaTradingTechnologyIPED@rbs.com"
export email_from_team="GBMTSIFX@rbs.com"


mailfile=/tmp/birthday.tmp

max_name=""
flag=0
email_id_final=""

export out=""

#############  Check who is having birthday ################ 

while read line 
do
  name=`echo $(rev<<<$(echo $(rev <<< $line) |cut -d" " -f3-))`
  date=`echo $line | awk '{print $(NF-1)}'`
  email_id=`echo $line | awk '{print $(NF)}'`

  todaydate=`date +'%d%m'`

  if [ "$date" = "$todaydate" ]; then
    if [ -z "$max_name" ]; then
      max_name=`echo $name`
      email_id_final=`echo $email_id`
      flag=1
    else
      max_name="$max_name & $name"
      email_id_final="$email_id_final,$email_id"
    fi
  fi
done < $configFile


echo "To: $email_id_final" > $mailfile
#echo "To: puneet.chawla@rbs.com" > $mailfile
echo "bcc: $emailto_team" >> $mailfile
echo "Subject: Happy Birthday" >> $mailfile 
echo "Content-Type: text/html; charset=us-ascii" >> $mailfile 
echo "<HTML><HEAD><TITLE>Happy Birthday</TITLE></HEAD><BODY>" >> $mailfile

#############  Generating mail ################ 

if [ "$flag" = "1" ]; then
   number=$RANDOM
   let "number %= 3"
   case $number in
   0 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/076.gif\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   1 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/074.jpg\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   2 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/077.gif\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   3 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/078.jpg\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
  esac
    echo "<span style=\"font-family: Lucida Handwriting; font-size: 25px; font-weight: bold; color:#ff0080;\">" >> $mailfile
    echo -e >> $mailfile "Dear $max_name,<br>"
    #echo -e "<center><img src=\"http://facebook.fm.rbsgrp.net/FaceBook2/photos/facebook/00/257900.jpg\"></a><br><br></center>" >>  $mailfile
    echo -e >> $mailfile "Wishing you a very-very Happy Birthday...!!! <br>  May God bless you.<br>"
    echo -e >> $mailfile "Enjoy and have blast!!!<br>"
    echo "</span>" >> $mailfile
    echo  >> $mailfile "<br><br>"
    echo "<span style=\"font-family: Viner Hand ITC font-size: 20px; font-weight: normal; font-style: italic; color: #ff5555;\">" >> $mailfile
    echo >> $mailfile "Regards..!!<br>"
    echo >> $mailfile "Currencies Futures and Prime Techonology</span>"

    echo "</body></html>" >> $mailfile

###########  Sending mail ################ 

cat $mailfile | sendmail -t -f $email_from_team

rm -f $mailfile

fi


###################################################################################################

export emailto_team="GBMTSIFX@rbs.com,CIBIndiaTradingTechnologyIPED@rbs.com"

export email_from_team="GBMTSIFX@rbs.com"

mailfile=/tmp/birthday.tmp

email_id_final=""
echo "To: $email_id_final" > $mailfile
echo "bcc: $emailto_team" >> $mailfile
echo "Subject: Happy New Year!!!" >> $mailfile 

echo "Content-Type: text/html; charset=us-ascii" >> $mailfile 

echo "<HTML><HEAD><TITLE></TITLE></HEAD><BODY>" >> $mailfile

export new=`date +'%d%m'`

if [ "$new" -eq "0101" ]
then
echo "<br><center><img border="0" alt="Click here to get more New Year Greetings from MasterGreetings.com" src="http://g.mastergreetings.com/newyear/008.gif"></center><br>" >> $mailfile
#echo "<center><a href="http://www.sendscraps.com"><img src="http://img1.sendscraps.com/se/055/diwali_035.jpg" alt="Send Pictures" border="0"></a></center><br>" >> $mailfile
    echo "<span style=\"font-family: Viner Hand ITC font-size: 20px; font-weight: normal; font-style: italic; color: #ff5555;\">" >> $mailfile
    echo >> $mailfile "Regards..!!<br>"
    echo >> $mailfile "Currencies Futures and Prime Techonology</span>"

    echo "</body></html>" >> $mailfile

###########  Sending mail ################ 

cat $mailfile | sendmail -t -f $email_from_team

rm -f $mailfile

fi

###################################################################################################

export emailto_team="GBMTSIFX@rbs.com,CIBIndiaTradingTechnologyIPED@rbs.com"

export email_from_team="GBMTSIFX@rbs.com"

mailfile=/tmp/birthday.tmp

email_id_final=""
echo "To: $email_id_final" > $mailfile
echo "bcc: $emailto_team" >> $mailfile
echo "Subject: Happy Lohri!!!" >> $mailfile

echo "Content-Type: text/html; charset=us-ascii" >> $mailfile

echo "<HTML><HEAD><TITLE></TITLE></HEAD><BODY>" >> $mailfile

export new=`date +'%d%m'`

if [ "$new" -eq "1301" ]
then
  echo "<br><center><a href="http://www.sendscraps.com"><img src="http://img1.sendscraps.com/se/146/004.gif" alt="sendscraps.com" border="0"></a></center><br>">> $mailfile
    echo "<span style=\"font-family: Viner Hand ITC font-size: 20px; font-weight: normal; font-style: italic; color: #ff5555;\">" >> $mailfile
    echo >> $mailfile "Regards..!!<br>"
    echo >> $mailfile "Currencies Futures and Prime Techonology</span>"

    echo "</body></html>" >> $mailfile

###########  Sending mail ################

cat $mailfile | sendmail -t -f $email_from_team

rm -f $mailfile

fi


###################################### HOLI ##############################################

export emailto_team="GBMTSIFX@rbs.com,CIBIndiaTradingTechnologyIPED@rbs.com"

export email_from_team="GBMTSIFX@rbs.com"

mailfile=/tmp/birthday.tmp

email_id_final=""
echo "To: $email_id_final" > $mailfile
echo "bcc: $emailto_team" >> $mailfile
echo "Subject: Happy Holi!!!" >> $mailfile

echo "Content-Type: text/html; charset=us-ascii" >> $mailfile

echo "<HTML><HEAD><TITLE></TITLE></HEAD><BODY>" >> $mailfile

export new=`date +'%d%m'`

if [ "$new" -eq "2003" ]
then
  echo "<br><center><a href="http://www.sendscraps.com"><img src="http://img1.sendscraps.com/se/003/038.jpg" alt="Send Images" border="0"></a></center><br><br>">> $mailfile
    echo "<span style=\"font-family: Viner Hand ITC font-size: 20px; font-weight: normal; font-style: italic; color: #ff5555;\">" >> $mailfile
    echo >> $mailfile "Regards..!!<br>"
    echo >> $mailfile "Currencies Futures and Prime Techonology</span>"

    echo "</body></html>" >> $mailfile

###########  Sending mail ################

cat $mailfile | sendmail -t -f $email_from_team

rm -f $mailfile

fi



###################################### Makar Sankranti ##############################################

export emailto_team="GBMTSIFX@rbs.com,CIBIndiaTradingTechnologyIPED@rbs.com"

export email_from_team="GBMTSIFX@rbs.com"

mailfile=/tmp/birthday.tmp

email_id_final=""
echo "To: $email_id_final" > $mailfile
echo "bcc: $emailto_team" >> $mailfile
echo "Subject: Happy Makar Sankranti!!!" >> $mailfile

echo "Content-Type: text/html; charset=us-ascii" >> $mailfile

echo "<HTML><HEAD><TITLE></TITLE></HEAD><BODY>" >> $mailfile

export new=`date +'%d%m'`

if [ "$new" -eq "1401" ]
then
  echo "<br><center><a href="http://www.sendscraps.com"><img src="http://img1.sendscraps.com/se/147/016.jpg" alt="Send Images" border="0"></a></center><br><br>">> $mailfile
    echo "<span style=\"font-family: Viner Hand ITC font-size: 20px; font-weight: normal; font-style: italic; color: #ff5555;\">" >> $mailfile
    echo >> $mailfile "Regards..!!<br>"
    echo >> $mailfile "Currencies Futures and Prime Techonology</span>"

    echo "</body></html>" >> $mailfile

###########  Sending mail ################

cat $mailfile | sendmail -t -f $email_from_team

rm -f $mailfile

fi

###################################### Eid ##############################################

export emailto_team="GBMTSIFX@rbs.com,CIBIndiaTradingTechnologyIPED@rbs.com"

export email_from_team="GBMTSIFX@rbs.com"

mailfile=/tmp/birthday.tmp

email_id_final=""
echo "To: $email_id_final" > $mailfile
echo "bcc: $emailto_team" >> $mailfile
echo "Subject: Happy Eid!!!" >> $mailfile

echo "Content-Type: text/html; charset=us-ascii" >> $mailfile

echo "<HTML><HEAD><TITLE></TITLE></HEAD><BODY>" >> $mailfile

export new=`date +'%d%m'`

if [ "$new" -eq "1108" ]
then
  echo "<br><center><a href="http://www.sendscraps.com"><img src="http://img1.sendscraps.com/se/051/021.jpg" alt="Send Images" border="0"></a></center><br><br>">> $mailfile
    echo "<span style=\"font-family: Viner Hand ITC font-size: 20px; font-weight: normal; font-style: italic; color: #ff5555;\">" >> $mailfile
    echo >> $mailfile "Regards..!!<br>"
    echo >> $mailfile "Currencies Futures and Prime Techonology</span>"

    echo "</body></html>" >> $mailfile

###########  Sending mail ################

cat $mailfile | sendmail -t -f $email_from_team

rm -f $mailfile

fi

###################################### Dussehra ##############################################

export emailto_team="GBMTSIFX@rbs.com,CIBIndiaTradingTechnologyIPED@rbs.com"

export email_from_team="GBMTSIFX@rbs.com"

mailfile=/tmp/birthday.tmp

email_id_final=""
echo "To: $email_id_final" > $mailfile
echo "bcc: $emailto_team" >> $mailfile
echo "Subject: Happy Dussehra!!!" >> $mailfile

echo "Content-Type: text/html; charset=us-ascii" >> $mailfile

echo "<HTML><HEAD><TITLE></TITLE></HEAD><BODY>" >> $mailfile

export new=`date +'%d%m'`

if [ "$new" -eq "1910" ]
then
  echo "<br><center><a href="http://www.sendscraps.com"><img src="http://img1.sendscraps.com/se/053/dussehra_008.gif" alt="Send Images" border="0"></a></center><br><br>">> $mailfile
    echo "<span style=\"font-family: Viner Hand ITC font-size: 20px; font-weight: normal; font-style: italic; color: #ff5555;\">" >> $mailfile
    echo >> $mailfile "Regards..!!<br>"
    echo >> $mailfile "Currencies Futures and Prime Techonology</span>"

    echo "</body></html>" >> $mailfile

###########  Sending mail ################

cat $mailfile | sendmail -t -f $email_from_team

rm -f $mailfile

fi

###################################### Diwali ##############################################

export emailto_team="GBMTSIFX@rbs.com,CIBIndiaTradingTechnologyIPED@rbs.com"

export email_from_team="GBMTSIFX@rbs.com"

mailfile=/tmp/birthday.tmp

email_id_final=""
echo "To: $email_id_final" > $mailfile
echo "bcc: $emailto_team" >> $mailfile
echo "Subject: Happy Diwali!!!" >> $mailfile

echo "Content-Type: text/html; charset=us-ascii" >> $mailfile

echo "<HTML><HEAD><TITLE></TITLE></HEAD><BODY>" >> $mailfile

export new=`date +'%d%m'`

if [ "$new" -eq "0711" ]
then
  echo "<br><center><a href="http://www.sendscraps.com"><img src="http://img1.sendscraps.com/se/055/diwali_035.jpg" alt="Send Images" border="0"></a></center><br><br>">> $mailfile
    echo "<span style=\"font-family: Viner Hand ITC font-size: 20px; font-weight: normal; font-style: italic; color: #ff5555;\">" >> $mailfile
    echo >> $mailfile "Regards..!!<br>"
    echo >> $mailfile "Currencies Futures and Prime Techonology</span>"

    echo "</body></html>" >> $mailfile

###########  Sending mail ################

cat $mailfile | sendmail -t -f $email_from_team

rm -f $mailfile

fi


#####################################################################################################################

#############################################################################################################
############################################## GTS ##########################################################
#############################################################################################################


configFile=/ecomm/digisales/spreadsv/autorun_spreadreport_backup/autosys-job-scripts/birthday_gts.cfg

export emailto_team="GTSTechnologyIndiaTeam@rbs.com"
export email_from_team="GTSTechnologyIndiaTeam@rbs.com"


mailfile=/tmp/birthday_gts.tmp

max_name=""
flag=0
email_id_final=""

export out=""

#############  Check who is having birthday ################

while read line
do
  name=`echo $(rev<<<$(echo $(rev <<< $line) |cut -d" " -f3-))`
  date=`echo $line | awk '{print $(NF-1)}'`
  email_id=`echo $line | awk '{print $(NF)}'`

  todaydate=`date +'%d%m'`

  if [ "$date" = "$todaydate" ]; then
    if [ -z "$max_name" ]; then
      max_name=`echo $name`
      email_id_final=`echo $email_id`
      flag=1
    else
      max_name="$max_name & $name"
      email_id_final="$email_id_final,$email_id"
    fi
  fi
done < $configFile


echo "To: $email_id_final" > $mailfile
echo "bcc: $emailto_team,puneet.chawla@rbs.com" >> $mailfile
echo "Subject: Happy Birthday" >> $mailfile
echo "Content-Type: text/html; charset=us-ascii" >> $mailfile
echo "<HTML><HEAD><TITLE>Happy Birthday</TITLE></HEAD><BODY>" >> $mailfile

#############  Generating mail ################
if [ "$flag" = "1" ]; then
   number=$RANDOM
   let "number %= 3"
   case $number in
   0 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/076.gif\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   1 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/074.jpg\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   2 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/077.gif\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   3 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/078.jpg\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
  esac
   echo "<span style=\"font-family: Lucida Handwriting; font-size: 25px; font-weight: bold; color:#ff0080;\">" >> $mailfile
	echo -e >> $mailfile "Dear $max_name,<br>"
    #echo -e "<center><img src=\"http://facebook.fm.rbsgrp.net/FaceBook2/photos/facebook/00/257900.jpg\"></a><br><br></center>" >>  $mailfile
    echo -e >> $mailfile "Wishing you a very-very Happy Birthday...!!! <br>  May God bless you.<br>"
    echo -e >> $mailfile "Enjoy and have blast!!!<br>"
    echo "</span>" >> $mailfile
    echo  >> $mailfile "<br><br>"
    echo "<span style=\"font-family: Viner Hand ITC font-size: 20px; font-weight: normal; font-style: italic; color: #ff5555;\">" >> $mailfile
    echo >> $mailfile "Regards..!!<br>"
    echo >> $mailfile "GTS Team</span>"

    echo "</body></html>" >> $mailfile

###########  Sending mail ################

cat $mailfile | sendmail -t -f $email_from_team

rm -f $mailfile

fi


##########################################################################################

configFile=/ecomm/digisales/spreadsv/autorun_spreadreport_backup/autosys-job-scripts/birthday_arp.cfg

export emailto_team="CIBTechnologyTransformationARPIndia@rbs.com,RBSTechnologyQualityAssuranceServicesIndia@rbs.com,Sachin.KumarSingh@rbs.com,NIKHIL.BANSAL@rbs.com,Vishal.Sinha1@rbs.com"
export email_from_team="CIBTechnologyTransformationARPIndia@rbs.com"


mailfile=/tmp/birthday_tmg.tmp

max_name=""
flag=0
email_id_final=""

export out=""

#############  Check who is having birthday ################

while read line
do
  name=`echo $(rev<<<$(echo $(rev <<< $line) |cut -d" " -f3-))`
  date=`echo $line | awk '{print $(NF-1)}'`
  email_id=`echo $line | awk '{print $(NF)}'`

  todaydate=`date +'%d%m'`

  if [ "$date" = "$todaydate" ]; then
    if [ -z "$max_name" ]; then
      max_name=`echo $name`
      email_id_final=`echo $email_id`
      flag=1
    else
      max_name="$max_name & $name"
      email_id_final="$email_id_final,$email_id"
    fi
  fi
done < $configFile


echo "To: $email_id_final" > $mailfile
echo "bcc: $emailto_team,puneet.chawla@rbs.com" >> $mailfile
echo "Subject: Happy Birthday" >> $mailfile
echo "Content-Type: text/html; charset=us-ascii" >> $mailfile
echo "<HTML><HEAD><TITLE>Happy Birthday</TITLE></HEAD><BODY>" >> $mailfile

#############  Generating mail ################
if [ "$flag" = "1" ]; then
   number=$RANDOM
   let "number %= 3"
   case $number in
   0 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/076.gif\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   1 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/074.jpg\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   2 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/077.gif\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   3 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/078.jpg\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   esac
   echo "<span style=\"font-family: Lucida Handwriting; font-size: 25px; font-weight: bold; color:#ff0080;\">" >> $mailfile
        echo -e >> $mailfile "Dear $max_name,<br>"
    #echo -e "<center><img src=\"http://facebook.fm.rbsgrp.net/FaceBook2/photos/facebook/00/257900.jpg\"></a><br><br></center>" >>  $mailfile
    echo -e >> $mailfile "Wishing you a very-very Happy Birthday...!!! <br>  May God bless you.<br>"
    echo -e >> $mailfile "Enjoy and have blast!!!<br>"
    echo "</span>" >> $mailfile
    echo  >> $mailfile "<br><br>"
    echo "<span style=\"font-family: Viner Hand ITC font-size: 20px; font-weight: normal; font-style: italic; color: #ff5555;\">" >> $mailfile
    echo >> $mailfile "Regards..!!<br>"
    echo >> $mailfile "ARP Team</span>"

    echo "</body></html>" >> $mailfile

###########  Sending mail ################

cat $mailfile | sendmail -t -f $email_from_team

rm -f $mailfile

fi

##############################################################################################

configFile=/ecomm/digisales/spreadsv/autorun_spreadreport_backup/autosys-job-scripts/birthday_tmoss.cfg

export emailto_team="CIBTMOSSTechnologyIndia@rbsres07.net"
export email_from_team="TMOSS_India_People_Connect@rbs.com"


mailfile=/tmp/birthday_tmg.tmp

max_name=""
flag=0
email_id_final=""

export out=""

#############  Check who is having birthday ################

while read line
do
  name=`echo $(rev<<<$(echo $(rev <<< $line) |cut -d" " -f3-))`
  date=`echo $line | awk '{print $(NF-1)}'`
  email_id=`echo $line | awk '{print $(NF)}'`

  todaydate=`date +'%d%m'`

  if [ "$date" = "$todaydate" ]; then
    if [ -z "$max_name" ]; then
      max_name=`echo $name`
      email_id_final=`echo $email_id`
      flag=1
    else
      max_name="$max_name & $name"
      email_id_final="$email_id_final,$email_id"
    fi
  fi
done < $configFile

echo $max_name

echo "To: $email_id_final" > $mailfile
echo "bcc: $emailto_team,puneet.chawla@rbs.com,harsh.chhabra1@rbs.com" >> $mailfile
echo "Subject: Happy Birthday" >> $mailfile
echo "Content-Type: text/html; charset=us-ascii" >> $mailfile
echo "<HTML><HEAD><TITLE>Happy Birthday</TITLE></HEAD><BODY>" >> $mailfile

#############  Generating mail ################
if [ "$flag" = "1" ]; then
    echo "<span style=\"font-family: Lucida Handwriting; font-size: 25px; font-weight: bold; color:#ff0080;\">" >> $mailfile
    echo -e >> $mailfile "Dear $max_name,<br><br>"
    echo -e >> $mailfile "Wishing you a Very Happy Birthday...!!! <br><br>"

   number=$RANDOM
   let "number %= 3"
   case $number in
   0 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/076.gif\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   1 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/074.jpg\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   2 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/077.gif\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   3 ) echo "<center><a href=\"http://www.sendscraps.com\"><img src=\"http://img1.sendscraps.com/se/002/078.jpg\"></a><br><br><a href=\"http://www.sendscraps.com/happy-birthday.html\"></a><br></center>" >>  $mailfile    ;;
   esac
   
    echo -e >> $mailfile "May God bless you.<br><br>Enjoy and have a blast!!!<br>"
    echo "</span>" >> $mailfile
    echo  >> $mailfile "<br><br>"
    echo "<span style=\"font-family: Monotype Corsiva font-size: 30pt; font-weight: bold; font-style: italic; color: #652781;\">" >> $mailfile
    echo >> $mailfile "Regards..!!<br>"
    echo >> $mailfile "TMOSS India</span>"

    echo "</body></html>" >> $mailfile

###########  Sending mail ################

cat $mailfile | sendmail -t -f $email_from_team

rm -f $mailfile

fi
##############################################################################################

