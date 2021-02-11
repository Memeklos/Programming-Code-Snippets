
#include <stdio.h>
#include <stdlib.h>

int running;

int player_x;
int player_y;

char board[10][10] = {
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
	{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
};

void render();

int main() {

	char direction;

	player_x = 2;
	player_y = 2;

	running = 1;

	while (running == 1) {

		render();

		printf("Which direction? (w/a/s/d): ");
		scanf(" %c", &direction);

		if (direction == 'w') {
			player_y--;
		} else if (direction == 'a') {
			player_x--;
		} else if (direction == 's') {
			player_y++;
		} else if (direction == 'd') {
			player_x++;
		}

	}

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
				printf("%c", board[y][x]);
			}
		}
		printf("\n");
	}

}
