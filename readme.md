assignment link: https://classroom.github.com/a/3gWTS2cG

In this task you have to write a commandline program which takes strings from the standard input, processes them, and writes to the standard output.

You are free to choose one of the following tasks. Only one task is required to complete.

* the program takes characters from the stdin, makes all characters in ASCII range lowercase, outputs to the standard output. the name of the output executable should be 'lowercase'.

* program that tokenizes words it gets from the stdin. should output only words, one per line, without punctuation marks. the name of the output executable should be 'makewords'.

* program that transforms ARMSCII-8 text given to stdin to UTF-8 Unicode encoding, writes result to standard output. the output executable should be 'armscii2utf'.

* program that takes two commandline arguments, tries to open files with those names, assumes those are sorted, compares them and outputs only those lines that differ.
if one of the commandline arguments is a dash symbol ('-') then use stdin instead of one of the files.
the name of the output executable should be 'mismatch'.


We will compile the program by changing in to the directory, and running 'make'. We will test the program by running one of the makefile sections: 

make test_makewords
make test_mismatch
make test_lowercase
make test_armscii2utf

We recommend to use C (not C++), Pascal (fpc) or Go to solve this task, but you are free to use any programming language you prefer.

Make sure you've edited the makefile in a way we'll be able to compile and test your program.

Useful links:

https://en.wikipedia.org/wiki/Makefile
https://en.wikipedia.org/wiki/Make_(software)
https://www.codeproject.com/Articles/31488/Makefiles-in-Linux-An-Overview
makefiles:
http://www.sis.pitt.edu/mbsclass/tutorial/advanced/makefile/whatis.htm

rob pike's notes on programming in c
http://doc.cat-v.org/bell_labs/pikestyle

i/o in c
http://users.cs.cf.ac.uk/Dave.Marshall/C/node18.html
reading from stdin:

read(), gets()

https://stackoverflow.com/questions/15883568/reading-from-stdin
https://stackoverflow.com/questions/8975521/read-from-stdin


Deadline: 03/31/2021 23:59 +0400 

