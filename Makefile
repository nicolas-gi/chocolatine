##
## EPITECH PROJECT, 2023
## chocolatine
## File description:
## Makefile
##

CC = gcc

NAME = pain_au_chocolat

SRC	= main.c

OBJ	= $(SRC:.c=.o)

all : $(NAME)
$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ)

clean :
	$(RM) $(OBJ)

fclean :
	$(RM) $(NAME)
	$(RM) pain_au_chocolat-test.gcno

tests_run :
	$(CC) -o $(NAME) tests/test.c --coverage -lcriterion

re : fclean
	make all

.PHONY: all clean fclean tests_run re
