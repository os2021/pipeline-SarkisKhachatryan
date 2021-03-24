
# choose one of the following to compile
all:
	@echo "compiling all the files.."
	@cd lowercase && CC -o lowercase lowercase.c && cd ..
	@echo "done"    
    
#			CC -o makewords makewords.c
#			#			CC -o mismatch mismatch.c
#			CC -o armscii2utf armscii2utf.c


test_lowercase:
	echo "AaBbccDDoOo" | ./lowercase/lowercase
	cat text_to_spell | ./lowercase/lowercase | fmt -1 | ./lowercase/lowercase | sort | tr '.' ' ' | uniq |  comm -23 - dictionary 

test_makewords:
			echo "aaa aab, aac." | ./makewords
			cat text_to_spell | ./makewords | tr A-Z a-z | sort | tr '.' ' ' | uniq |  comm -23 - dictionary

test_mismatch:
			 cat text_to_spell | fmt -1 | tr A-Z a-z | sort | tr '.' ' ' | uniq | ./mismatch - dictionary 

test_armscii2utf:
			cat armscii | ./armscii2utf


