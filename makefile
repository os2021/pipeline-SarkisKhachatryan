
# choose one of the following to compile
all:
	@echo "compiling all the files.."
	@CC -o ./lowercase/lowercase ./lowercase/lowercase.c
	@CC -o ./makewords/makewords ./makewords/makewords.c
	@echo "done"
#			#			CC -o mismatch mismatch.c
#			CC -o armscii2utf armscii2utf.c


test_lowercase:
	echo "AaBbccDDoOo" | ./lowercase/lowercase
	cat text_to_spell | ./lowercase/lowercase | fmt -1 | ./lowercase/lowercase | sort | tr '.' ' ' | uniq |  comm -23 - dictionary 

test_makewords:
	echo "aaa aab, aac." | ./makewords/makewords
	cat text_to_spell | ./makewords | tr A-Z a-z | sort | tr '.' ' ' | uniq |  comm -23 - dictionary

test_mismatch:
			 cat text_to_spell | fmt -1 | tr A-Z a-z | sort | tr '.' ' ' | uniq | ./mismatch - dictionary 

test_armscii2utf:
			cat armscii | ./armscii2utf


