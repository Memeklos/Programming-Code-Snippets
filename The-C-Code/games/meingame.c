
#include <stdio.h>
#include <stdlib.h>

int running;

int player_x;
int player_y;

char board[10][10] = {
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', 'X', ' ', ' '},
	{' ', ' ', 'X', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', 'X', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', 'X', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
};

void render();

int main() {

	char direction;

	player_x = 2;
	player_y = 2;

	running = 1;

	system("stty raw -echo");

	while (running == 1) {

		render();

		printf("Which direction? (w/a/s/d): ");
		scanf(" %c", &direction);

		if (direction == 'w' && player_y > 0) {
			player_y--;
		} else if (direction == 'a' && player_x > 0) {
			player_x--;
		} else if (direction == 's' && player_y < 9) {
			player_y++;
		} else if (direction == 'd' && player_x < 9) {
			player_x++;
		} else if (direction == 'q') {
			running = 0;
			printf("\n\r");
		}

		if (board[player_y] [player_x] == 'X') {
			printf("You Died\n\r");
			running = 0;
		}

	}

	system("stty -raw echo");

	return 0;

}

void render() {

	int x, y;

	system("clear");

	for (y=-1; y<11; y++) {
		for (x=-1; x<11; x++) {
			if (x == player_x && y == player_y) {
				printf("@");
			} else if (x == -1 || x == 10 || y == -1 || y == 10) {
				printf("#");
			} else {
				if (board[y][x] == 'X') {
					printf("\e[31;1m%c\e[0m");
				} else {
				printf("%c", board[y][x]);
				}
			}
		}
		printf("\n\r");
	}

}
