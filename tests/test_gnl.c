/*
** EPITECH PROJECT, 2020
** test_gnl.c
** File description:
** gnl
*/

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <criterion/criterion.h>
#include "get_next_line.h"

Test(get_next_line, test_one)
{
    int fd = open("tests/test.txt", O_RDONLY);
    char *s = get_next_line(fd);

    cr_assert_str_eq(s, "bonjour ceci");
    free(s);
    s = get_next_line(fd);
    cr_assert_str_eq(s, "est un test");
    free(s);
}
