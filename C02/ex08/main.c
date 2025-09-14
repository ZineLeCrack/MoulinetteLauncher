#include "../../includes.h"

int	ft_strlowcase(char *str);

int	main()
{
	char	str1[] = "Hello World !";

	putstr("\"");
	putstr(str1);
	putstr("\" --> \"");
	ft_strlowcase(str1);
	putstr(str1);
	putstr("\"\n");

	char	str2[] = "";

	putstr("\"");
	putstr(str2);
	putstr("\" --> \"");
	ft_strlowcase(str2);
	putstr(str2);
	putstr("\"\n");

	char	str3[128];

	for (int i = 0; i < 128; i++) {
		if (i + 1 == '\n' || i + 1 == '\r') str3[i] = '$';
		else str3[i] = (char)(i + 1);
	}

	putstr("\"");
	putstr(str3);
	putstr("\" --> \"");
	ft_strlowcase(str3);
	putstr(str3);
	putstr("\"\n");

	char	str4[] = "LoremIpsumissimplydummytextoftheprintingandtypesettingindustryLoremIpsumhasbeentheindustrysstandarddummytexteversincetheswhenanunknownprintertookagalleyoftypeandscrambledittomakeatypespecimenbookIthassurvivednotonlyfivecenturiesbutalsotheleapintoelectronictypesettingremainingessentiallyunchangedItwaspopularisedintheswiththereleaseofLetrasetsheetscontainingLoremIpsumpassagesandmorerecentlywithdesktoppublishingsoftwarelikeAldusPageMakerincludingversionsofLoremIpsum";

	putstr("\"");
	putstr(str4);
	putstr("\" --> \"");
	ft_strlowcase(str4);
	putstr(str4);
	putstr("\"\n");

	char	str5[] = "😁";

	putstr("\"");
	putstr(str5);
	putstr("\" --> \"");
	ft_strlowcase(str5);
	putstr(str5);
	putstr("\"\n");
}
