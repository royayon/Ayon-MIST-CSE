bison -d -y your_student_id.y
g++ -w -c -o yaccDemo.o y.tab.c
flex your_student_id.lex
g++ -fpermissive -w -c -o lexDemo.o lex.yy.c
g++ -o myCompiler lexDemo.o yaccDemo.o -lfl -ly
myCompiler.exe
