# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pjay <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/09 12:05:04 by pjay              #+#    #+#              #
#    Updated: 2022/11/09 12:05:04 by pjay             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=cc
CFLAGS=-Wall -Werror -Wextra
SRC=ft_printf.c \
	ft_putnbr_int.c \
	ft_putstr.c \
	ft_putnbr_base.c \
	ft_putchar.c \
	ft_putnbr_unsigned.c \
	ft_countnb.c \
	ft_strlen.c \
	printpointeur.c \

OBJ=$(SRC:.c=.o)
NAME=libftprintf.a

all : $(NAME)

.PHONY: all

$(NAME): $(OBJ)
		$(CC) -c $(CFLAGS) $(SRC)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)

$(OBJ):libftprintf.h

clean:
	rm -rf $(OBJ)

.PHONY: clean

fclean : clean
	rm -f $(NAME)

.PHONY: fclean

re : fclean all

.PHONY: re

