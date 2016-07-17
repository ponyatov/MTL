#ifndef _H_L0H
#define _H_L0H

#include <iostream>
#include <cstdlib>
#include <vector>
#include <map>
using namespace std;

extern int yylex();
extern int yylineno;
extern char* yytext;
extern int yyparse();
extern void yyerror(string);
#include "L0.tab.hpp"

#endif // _H_L0H
