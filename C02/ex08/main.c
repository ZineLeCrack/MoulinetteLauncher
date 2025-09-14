#include "../../includes.h"

char	*ft_strlowcase(char *str);

int	main()
{
	char	str1[] = "Hello World !";

	putstr("\"");
	putstr(str1);
	putstr("\" --> \"");
	char *return_value = ft_strlowcase(str1);
	putstr(str1);
	putstr("\", returned_value = ");
	putstr(return_value == str1 ? "OK\n" : "KO\n");

	char	str2[] = "";

	putstr("\"");
	putstr(str2);
	putstr("\" --> \"");
	return_value = ft_strlowcase(str2);
	putstr(str2);
	putstr("\", returned_value = ");
	putstr(return_value == str2 ? "OK\n" : "KO\n");

	char	str3[128];

	for (int i = 0; i < 128; i++) {
		if (i + 1 == '\n' || i + 1 == '\r') str3[i] = '$';
		else str3[i] = (char)(i + 1);
	}

	putstr("\"");
	putstr(str3);
	putstr("\" --> \"");
	return_value = ft_strlowcase(str3);
	putstr(str3);
	putstr("\", returned_value = ");
	putstr(return_value == str3 ? "OK\n" : "KO\n");

	char	str4[] = "LoremIpsumissimplydummytextoftheprintingandtypesettingindustryLoremIpsumhasbeentheindustrysstandarddummytexteversincetheswhenanunknownprintertookagalleyoftypeandscrambledittomakeatypespecimenbookIthassurvivednotonlyfivecenturiesbutalsotheleapintoelectronictypesettingremainingessentiallyunchangedItwaspopularisedintheswiththereleaseofLetrasetsheetscontainingLoremIpsumpassagesandmorerecentlywithdesktoppublishingsoftwarelikeAldusPageMakerincludingversionsofLoremIpsum";

	putstr("\"");
	putstr(str4);
	putstr("\" --> \"");
	return_value = ft_strlowcase(str4);
	putstr(str4);
	putstr("\", returned_value = ");
	putstr(return_value == str4 ? "OK\n" : "KO\n");

	char	str5[] = "😁";

	putstr("\"");
	putstr(str5);
	putstr("\" --> \"");
	return_value = ft_strlowcase(str5);
	putstr(str5);
	putstr("\", returned_value = ");
	putstr(return_value == str5 ? "OK\n" : "KO\n");
}

