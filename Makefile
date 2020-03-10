##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## Makefile
##

CC	=	gcc

TESTS	=	tests/test_gnl.c	\
		get_next_line.c	\

CFLAGS	=	-W -Wall

CPPFLAGS	=	-I ./

UNITFLAGS	=	-lcriterion --coverage

EXECTESTS	=	unit_tests

tests_run:
	$(CC) $(TESTS) $(CFLAGS) $(CPPFLAGS) $(UNITFLAGS) -o $(EXECTESTS)
	./$(EXECTESTS) && gcovr --branches --exclude tests/

clean:
	rm -f *.gc*

fclean:	clean
	rm -f $(EXECTESTS)

re:	fclean tests_run

.PHONY:	clean fclean re
