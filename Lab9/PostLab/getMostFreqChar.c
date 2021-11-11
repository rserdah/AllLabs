#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main(int argc, char **argv)
{
	FILE *fp;
	char text[2048];
	char buff[512];
	fp = fopen(argv[1], "r");
	while(fgets(buff, sizeof(255), (FILE*)fp))
	{
		strcat(text, buff);
	}
	fclose(fp);

	int length = strlen(text);;
	int freqs[length];

	int i = 0;
	int j = 0;
	int k = 0;
	int max_index = 0;


	//Each character occurs at least once
	for(k = 0; k < length; k++)
	{
		freqs[k] = 1;
	}
	
	for(i = 0; i < strlen(text); i++)
	{
		for(j = 0; j < i; j++)
		{
			if(toupper(text[i]) == toupper(text[j]) && text[i] != ' ')
			{
				freqs[i]++;
			}
		}
	}

	for(i = 0; i < length; i++)
	{
		if(freqs[i] > freqs[max_index])
		{
			max_index = i;
		}
	}

	printf("The most frequent letter is '%c'. It appeared %d times.\n", text[max_index], freqs[max_index]);


	return 0;
}
