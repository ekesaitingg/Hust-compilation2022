parser:sysy.l sysy.y def.h
	bison -d sysy.y -o parser.tab.c
	flex sysy.l
	gcc parser.tab.c lex.yy.c ast.c -lfl -o parser