#include <stdio.h>

int main()
{
	int d1, d2, d3;
	printf("Enter phone number [(999)999-9999]: ");
	scanf("(%d)%d-%d", &d1, &d2, &d3);
	printf("You entered %d-%d-%d\n", d1, d2, d3);
	
	return 0;
}
