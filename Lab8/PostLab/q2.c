#include <stdio.h>
 
int main()
{
	int letters = 0;
	int space = 0;
	int words = 0;
	char character;
 
	printf("Enter a Sentence: "); 

	while((character=getchar()) != '\n')
	{ 
		if(character != ' ')
		{
			if(!space)
			{ 
				words++; 
				space=1; 
			} 

			letters++; 
		}
		else 
			space = 0;
	}
	
	printf("\nAverage word length : %.1f", (float)letters/words);
	printf("\nLetters: %d", letters);
	printf("\nWords: %d", words);
	printf("\n");
	return 0; 
}

