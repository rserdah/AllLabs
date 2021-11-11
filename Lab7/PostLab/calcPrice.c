#include <stdio.h>

int main()
{
	int itemNumber, quantity, month, day, year;
	float price;

	printf("Enter item number: ");
	scanf("%d", &itemNumber);
	
	printf("Enter unit price: $");
	scanf("%f", &price);

	printf("Enter quantity: ");
	scanf("%d", &quantity);

	printf("Enter purchase date (mm/dd/yyyy): ");
	scanf("%d/%d/%d", &month, &day, &year);

	printf("Item \tUnit Price \tQTY \tPurchase Date \tTotal Amount\n");
	printf("%-d \t$%9.2f \t%d \t%d/%d/%d \t$%11.2f\n", itemNumber, price, quantity, month, day, year, price * quantity);

	return 0;
}
