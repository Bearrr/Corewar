/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dverbyts <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/24 16:43:45 by dverbyts          #+#    #+#             */
/*   Updated: 2016/11/24 16:43:47 by dverbyts         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_isalnum(int test)
{
	int rez;

	if (test >= 48 && test <= 57)
		rez = 1;
	else if (test >= 65 && test <= 90)
		rez = 1;
	else if (test >= 97 && test <= 122)
		rez = 1;
	else
		rez = 0;
	return (rez);
}