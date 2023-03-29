##
## EPITECH PROJECT, 2022
## chocolatine
## File description:
## Makefile
##

CC		=	gcc

NAME	=	paint_au_chocolat

SRC		=	main.c

OBJ		=	$(SRC:.c=.o)

all:	$(NAME)
$(NAME):	$(OBJ)
	$(CC) -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

tests_run:
	$(CC) -o $(NAME) tests/test.c --coverage -lcriterion

.PHONY: all clean tests_run
