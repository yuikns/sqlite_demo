#######################################################################
#
#  The MIT License (MIT)
# 
#  
#  Copyright (C) 2013 Yu Jing (yujing5b5d@gmail.com)
#
#  Permission is hereby granted, free of charge, to any person 
#  obtaining a copy of this software and associated documentation files 
#  (the "Software"), to deal in the Software without restriction,  
#  including without limitation the rights to use, copy, modify, merge, 
#  publish, distribute,sublicense, and/or sell copies of the Software, 
#  and to permit persons to whom the Software is furnished to do so,  
#  subject to the following conditions:
# 
#  The above copyright notice and this permission notice shall be 
#  included in all copies or substantial portions of the Software.
# 
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
#  EXPRESS OR IMPLIED,INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
#  MERCHANTABILITY,FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
#  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
#  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
#  TORT OR OTHERWISE,ARISING FROM,OUT OF OR IN CONNECTION WITH THE 
#  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
# 
########################################################################

########################################################################
#
# Makefile
#
# Edited By Yu Jing @ Mar. 21 , 2013
#
########################################################################


########################SYSTEM SETTINGS#################################
CC			:= gcc
CP			:= cp
DEL			:= rm -rf
MV			:= mv
SAY			:= @echo

########################COMPILE SETTINGS################################


VPATH			:= src/:include/
	export	VPATH
LIBS			:=  -ldl -lpthread #-L
INCFLAG			:= -I include/
CFLAG			:= -Wall ${INCFLAG}
OBJ			:= sqlite3.o 
PROGS			:= demo

.PHONY			: clean succ
########################################################################
all			: ${PROGS} succ

rebuild			: clean all

demo			: ${OBJ} 
	${CC} ${CFLAG} $@.c -o $@ ${OBJ} ${LIBS}

#shell			: ${OBJ}
#	${CC} ${CFLAG} $@.c -o $@ ${OBJ} ${LIBS}

#sqlite3.o		: 
#	${CC} ${CFLAG} -c sqlite3.c -o $@ ${LIBS}

succ			:
	${SAY} "Complete !" 

clean    : 
	${DEL} ${PROGS}
	${DEL} *~
	${DEL} *.swp
	${DEL} *.o

