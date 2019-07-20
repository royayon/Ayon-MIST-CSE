bison -d -y 201714018.y
g++ -w -c -o yaccDemo.o y.tab.c
flex 201714018.lex
g++ -fpermissive -w -c -o lexDemo.o lex.yy.c
g++ -o myCompiler lexDemo.o yaccDemo.o -lfl -ly
myCompiler.exe
