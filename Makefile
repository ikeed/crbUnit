CC=/usr/bin/g++
CFLAGS=-Wall -g -pedantic-errors -Werror --coverage
MODULE=crbUnit

MKMOD=${CC} ${CFLAGS} -c $^
MKEXE=${CC} ${CFLAGS} $^ -o $@

${MODULE}.o:	${MODULE}.cpp ${MODULE}.h
clean:
	rm -f ${MODULE}.o *.gch
