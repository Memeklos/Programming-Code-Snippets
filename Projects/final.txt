#include <stdio.h>

void KidMenu();
void Done();
void Mistake();
char whatdo();

int main() {
	char choice;
	int conc;

	printf("\n\nBegin game? (Y/N) ");
		scanf(" %c", &choice);

	if (choice == 'Y') {
		printf("You sit at the restaurant with your young son, he says he is hungry. You agree to get him dinner. You open up to the kids menu, your child is far to young for adult food.\n");
		KidMenu();
		printf("Chicken nugger stares at you from the page. You don't understand. Your palms get sweaty and your son complains.\n");
		char ch = whatdo();
		if (ch == 'A') {
			printf("You try to order the chicken nugger, but you cannot. The words cannot escape your lips. Your son is hungry, he complains. The waitress stares at you, her head a spinning chicken nugger, her arms swinging French fried.\n\n");
			char ch = whatdo();
			if  (ch == 'A') {
				printf("You order the chicken nugger. You watch as your son scarfs down nugger after nugger. He is satisfied. He loves the chicken nugger. You wonder if you could ever attain that kind of happiness in your own life. You quietly pay your bill and enter the street.\n\n");
			}
			else if (ch == 'B') {
				printf("Your son cries the tears of a chicken nugger-less child. In your mind you scream. It is raining sweer potato now, you have French fried engraved on your left temple and you do not understand. Your son weeps in the corner, he is starving. Starving for the chicken nugger.\n\n");
			} else {
				Mistake();
			}
		}
		else if (ch == 'B'){
			printf("Your son is hungry, he complains. The waitress stares at you, her head a spinning chicken nugger, her arms swinging French fried.\n");
			char ch = whatdo();
			if (ch == 'A') {
				printf("You order the chicken nugger. You watch as your son scarfs down nugger after nugger. He is satisfied. He loves the chicken nugger. You wonder if you could ever attain that kind of happiness in your own life. You quietly pay your bill and enter the street.\n\n");
			}
			else if (ch == 'B') {
				while (ch == 'B') {
				printf("Your son cries the tears of a chicken nugger-less child. In your mind you scream. It is raining sweer potato now, you have French fried engraved on your left temple and you do not understand. Your son weeps in the corner, he is starving. Starving for the chicken nugger.\n");
				char ch = whatdo();
				}
				if (ch == 'A') {
					printf("You order the chicken nugger. You watch as your son scarfs down nugger after nugger. He is satisfied. He loves the chicken nugger. You wonder if you could ever attain that kind of happiness in your own life. You quietly pay your bill and enter the street.\n\n");
				} else {
					Mistake();
				}
			}
		} else {
		Mistake();
		}
	}
	else if (choice == 'N') {
		Done();
	} else {
		Mistake();
	}

	return 0;
}

void KidMenu() {
	printf("\nKid Menu\n\n");
	printf("Chicken Nugger(6)\n");
	printf("French Fried\n");
	printf("Sweer Potato\n\n");
}
void Done() {
	printf("See ya later!\n\n");
}
char whatdo() {
	char c;
	printf("\nWhat do you do?\n\n");
	printf("A. Order the chicken nugger.\n");
	printf("B. Do nothing.\n\n");
	scanf(" %c", &c);
	return c;
}
void Mistake() {
	printf("Looks like you like being a rebel!\n");
	printf("Bad news, bub. We ain't having none o' that.\n\n");
}