/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_autodj.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: msantos- <msantos-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/06/17 19:36:46 by msantos-          #+#    #+#             */
/*   Updated: 2021/07/12 21:19:34 by msantos-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# ifndef FT_AUTODJ_H
# define FT_AUTODJ_H

#include <stdio.h>
#include <unistd.h>
#include "../ft_printf_42/src/printf.h"
#include "../libft_42/libft.h"

# if defined(__APPLE__)
#  define PLAY "afplay"
#  define SO "MACOS"
# else
#  define PLAY "aplay"
#  define SO "LINUX"
# endif

void		printerr(char *err);

# endif