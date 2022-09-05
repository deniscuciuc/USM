#include <iostream>
#include "Header.h"
#include <string>

using std::cout;
using std::cin;
using std::endl;
using std::string;

void displayWelcomeMenuMessage(void);
void displayAvailableGames(void);
void displayOpeningGameMessage(string gameName);
void displayGameEndedMessage(void);

const int NUMBER_OF_AVAILABLE_GAMES = 2;

string lostFortune = "LostFortune";
string guessMyNumber = "GuessMyNumber";

string availableGames[NUMBER_OF_AVAILABLE_GAMES] = {
	lostFortune, guessMyNumber
};

void launchMenu(void)
{
	int userChoice = {};
	bool isExitSelected = userChoice == NUMBER_OF_AVAILABLE_GAMES + 1;

	displayWelcomeMenuMessage();
	do {
		displayAvailableGames();
		cout << "3. Exit";

		cout << "\n\nSelect game to launch: ";
		cin >> userChoice;

		switch (userChoice)
		{
			case 1: 
				displayOpeningGameMessage(lostFortune);
				launchLostFortune();
				displayGameEndedMessage();
				break;
			case 2:
				launchGuessMyNumber();
				break;
			case 3:
				cout << "Exiting from the game library...";
				return;
		}

	} while (!isExitSelected);


}

void displayWelcomeMenuMessage(void)
{
	cout << "Welcome!" << endl << endl;
	cout << "Now you are in your game library." << endl;
	cout << "By selecting corresponding number from the list of games you will laucnh it." << endl << endl;;
	cout << "Good luck, have fun ;)" << endl << endl;;
}

void displayAvailableGames(void)
{
	cout << "\n\nGames" << endl;
	for (int i = 0; i < NUMBER_OF_AVAILABLE_GAMES; i++)
	{
		cout << i + 1 << ". " << availableGames[i] << endl;
	}
}

void displayOpeningGameMessage(string gameName)
{
	cout << "Opening " << gameName << "..." << endl << endl;
}

void displayGameEndedMessage(void)
{
	cout << "\nGame ended. Exiting..." << endl << endl;
}