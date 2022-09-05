#include <iostream>
#include <cstdlib>
#include <ctime>
#include "Header.h"

using std::cout;
using std::cin;
using std::endl;
using std::string;

int correctNumber = {};
int userGuess = {};
int tries = {};

void launchGuessMyNumber(void)
{
	cout << "\n\n\tWelcome to Guess My Number \n\n";
	char userChoice = {};

	do {
		srand(static_cast<unsigned int>(time(0)));
		correctNumber = rand() % 100 + 1;
		bool isAnswerCorrect = false;

		do {
			cout << "Tries: " << tries << endl;;

			cout << "Enter a guess: ";
			cin >> userGuess;
			++tries;

			if (userGuess > correctNumber + 10)
			{
				cout << "\nToo high!\n\n";
			}
			else if (userGuess > correctNumber + 5)
			{
				cout << "\nClose but high!\n\n";
			}
			else if (userGuess < correctNumber - 10)
			{
				cout << "\nToo low!\n\n";
			}
			else if (userGuess < correctNumber - 5)
			{
				cout << "\nClose but low!\n\n";
			}
			else
			{
				isAnswerCorrect = true;
				cout << "\nThat's it! You got it in " << tries << " guesses!\n";
			}
		} while (!isAnswerCorrect);

		cout << "\n\nDo you want to play again? (y/n): ";
		cin >> userChoice;

		if (userChoice == 'y')
		{
			tries = {};
		}
		
	} while (userChoice != 'n');

}