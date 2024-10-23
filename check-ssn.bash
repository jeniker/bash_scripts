
  GNU nano 7.2                                       /usr/bin/ssn-check *                                         M
#! /bin/bash

# ssn-check
# validate usa social security numbers
# text file with one ssn on each line

BEGIN {
        FS="-";
}

{sn
# if first field starts with 000
        if ($1 ~ /000/)
                print NR, $0;
# if first field starts with 666
        if ($1 ~ /666/)
                print NR, $0;
# if first field starts with 9xx
        if ($1 ~ /^9/)
                print NR, $0;
# if first field has only one digit 
 if ($1 ~ /^.$/)
                print NR, $0;
# if first field has only two digits
        if ($1 ~ /^..$/)
                print NR, $0;
# if second field is "00"
		if ($2 ~ /00/)
                print NR, $0;
# if second field has only one digit
        if ($2 ~ /^.$/)
				print NR, $0;
# if third field is "0000"
		if ($3 ~ /0000/)
				print NR, $0;
# if third field has only one digit
		if ($3 ~ /^.$/)
				print NR, $0;
# if third field has only two digits 
		if ($3 ~ /^..$/)
				print NR, $0;
# if third field has only three digits
		if ($3 ~ /^...$/)
				print NR, $0;
}