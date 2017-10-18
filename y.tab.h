/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    semicolon = 258,
    open_bracket = 259,
    close_bracket = 260,
    assign = 261,
    open_paren = 262,
    close_paren = 263,
    comma = 264,
    open_brace = 265,
    close_brace = 266,
    int_ = 267,
    if_ = 268,
    else_ = 269,
    while_ = 270,
    return_ = 271,
    plus = 272,
    minus = 273,
    mul = 274,
    div_ = 275,
    mod = 276,
    and_ = 277,
    or_ = 278,
    less = 279,
    equal = 280,
    more = 281,
    n_equal = 282,
    not_ = 283,
    l_or = 284,
    main = 285,
    identifier = 286,
    integer = 287
  };
#endif
/* Tokens.  */
#define semicolon 258
#define open_bracket 259
#define close_bracket 260
#define assign 261
#define open_paren 262
#define close_paren 263
#define comma 264
#define open_brace 265
#define close_brace 266
#define int_ 267
#define if_ 268
#define else_ 269
#define while_ 270
#define return_ 271
#define plus 272
#define minus 273
#define mul 274
#define div_ 275
#define mod 276
#define and_ 277
#define or_ 278
#define less 279
#define equal 280
#define more 281
#define n_equal 282
#define not_ 283
#define l_or 284
#define main 285
#define identifier 286
#define integer 287

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
