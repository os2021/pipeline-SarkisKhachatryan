
# choose one of the following to compile
all:
			cc -o makewords makewords.c
#			cc -o lowercase lowercase.c
#			cc -o mismatch mismatch.c
#			cc -o armscii2utf armscii2utf.c


test_lowercase:
			echo "AaBbccDDoOo" | ./lowercase
			cat text_to_spell | ./fmt -1 | ./lowercase | sort | tr '.' ' ' | uniq |  comm -23 - dictionary

test_makewords:
			echo "aaa aab, aac." | ./makewords
			cat text_to_spell | ./makewords | tr A-Z a-z | sort | tr '.' ' ' | uniq |  comm -23 - dictionary

test_mismatch:
			 cat text_to_spell | fmt -1 | tr A-Z a-z | sort | tr '.' ' ' | uniq | ./mismatch - dictionary 

test_armscii2utf:
			cat armscii | ./armscii2utf


