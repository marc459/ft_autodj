/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: msantos- <msantos-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/06/17 16:49:15 by msantos-          #+#    #+#             */
/*   Updated: 2021/07/12 21:35:18 by msantos-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <ft_autodj.h>

int		main(int argc, char **argv)
{
	ft_printf("AUTODJ");
	system(ft_strjoin(PLAY, " music/DaftPunk_OneMoreTime.mp3 &"));
	while(1)
	{
		sleep(1);
	}
	system("pkill afplay");
	return (0);
}
