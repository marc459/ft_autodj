# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msantos- <msantos-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/17 16:49:30 by msantos-          #+#    #+#              #
#    Updated: 2021/07/12 21:12:15 by msantos-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#PROGRAMS
AUTODJ = autodj

#LIBS
LIBFT = libft_42/libft.a
PRINTF = ft_printf_42/libftprintf.a
LIBS = $(LIBFT) $(PRINTF)

INCLUDES = -I ./includes

#PATHS
OBJ_PATH = ./objs
SRC_PATH = ./srcs

#SRCS
SRCS = main.c utils.c
OBJS = $(SRCS:.c=.o)

#OBJS
OBJ = $(addprefix $(OBJ_PATH)/,$(SRCS:.c=.o))

#FLAGS
CC = gcc
CFLAGS = -Wall -Werror -Wextra

#INSTRUCTIONS
all: submodule ft_printf libft ft_autodj

#EVERY TIME A .O IS CALLED AS AN INSTRUCTION THIS WILL BE CREATED IN OBJ_PATH
$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c
	@mkdir -p $(OBJ_PATH) 2> /dev/null || true
	@$(CC) $(INCLUDES) -o $@ -c $^

submodule:
	@git submodule init
	@git submodule update --remote

#CHECKS THE EXISTANCE OF AN COMPILING FTPRINTF LIBRARY 
ft_printf:
	@make -C ft_printf_42  > /dev/null
libft:
	@make -C libft_42 > /dev/null

ft_autodj: $(OBJ)
	$(CC) $(OBJ) $(LIBFT) $(PRINTF) -o $(AUTODJ)

clean:
	@rm -rf $(OBJ_PATH)

fclean: clean
	@rm -rf $(AUTODJ)
	@make fclean -C ft_printf_42 > /dev/null
	@make fclean -C libft_42 > /dev/null

re: fclean all
