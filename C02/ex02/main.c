#include "../../includes.h"

int	ft_str_is_alpha(char *str);

int	main()
{
	printf("\"%s\" --> %d\n", "HelloWorld", ft_str_is_alpha("HelloWorld"));
	printf("\"%s\" --> %d\n", "", ft_str_is_alpha(""));
	printf("\"%s\" --> %d\n", "Hello World !", ft_str_is_alpha("Hello World"));
	printf("\"%s\" --> %d\n", "42", ft_str_is_alpha("42"));
	printf("\"%s\" --> %d\n", "×OOO×", ft_str_is_alpha("×OOO×"));
	printf("\"%s\" --> %d\n", "😁", ft_str_is_alpha("😁"));
	printf("\"%s\" --> %d\n", "LoremIpsumissimplydummytextoftheprintingandtypesettingindustryLoremIpsumhasbeentheindustrysstandarddummytexteversincetheswhenanunknownprintertookagalleyoftypeandscrambledittomakeatypespecimenbookIthassurvivednotonlyfivecenturiesbutalsotheleapintoelectronictypesettingremainingessentiallyunchangedItwaspopularisedintheswiththereleaseofLetrasetsheetscontainingLoremIpsumpassagesandmorerecentlywithdesktoppublishingsoftwarelikeAldusPageMakerincludingversionsofLoremIpsum", ft_str_is_alpha("LoremIpsumissimplydummytextoftheprintingandtypesettingindustryLoremIpsumhasbeentheindustrysstandarddummytexteversincetheswhenanunknownprintertookagalleyoftypeandscrambledittomakeatypespecimenbookIthassurvivednotonlyfivecenturiesbutalsotheleapintoelectronictypesettingremainingessentiallyunchangedItwaspopularisedintheswiththereleaseofLetrasetsheetscontainingLoremIpsumpassagesandmorerecentlywithdesktoppublishingsoftwarelikeAldusPageMakerincludingversionsofLoremIpsum"));
}
