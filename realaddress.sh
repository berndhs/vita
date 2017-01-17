#!/bin/sh
FILE=$1
echo "will change file ${FILE}"
echo "enter street address:"
read STREET
echo "street is ${STREET}"
echo "enter city:"
read CITY
echo "city is ${CITY}"
echo "enter state/province:"
read STATE
echo "state is ${STATE}"
echo "enter zip/postal:"
read POSTAL
echo "zip/postal is ${POSTAL}"
echo "enter country:"
read COUNTRY
echo "country is ${COUNTRY}"
echo "entery phone number:"
read PHONE
echo "phone is ${PHONE}"

cat ${FILE}  \
	| sed "s+isTheStreet+${STREET}+" \
	| sed "s+isTheCity+${CITY}+" \
	| sed "s+isTheState+${STATE}+" > tmp1.tex
cat tmp1.tex \
	| sed "s+isThePostal+${POSTAL}+" > tmp2.tex
cat tmp2.tex \
	| sed "s+isTheCountry+${COUNTRY}+" > tmp3.tex
cat tmp3.tex \
	| sed "s=isThePhone=${PHONE}=" >  cv.tex  # there can be + signs in phone numbers
rm tmp1.tex tmp2.tex tmp3.tex
