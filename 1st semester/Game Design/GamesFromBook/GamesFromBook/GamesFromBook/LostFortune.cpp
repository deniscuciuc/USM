#include <iostream>
#include <string>
#include "Header.h"

void displayWelcomeMessage(void);
void readValuesForGame(void);
void displayMainStory(void);
double getEachSurvivorsShareOfGold(void);
void displayOptionsAfterEndingGame(void);
void resetTheGame(void);

using std::cout;
using std::cin;
using std::endl;
using std::string;

const int GOLD_PIECES = 900;
unsigned adventures, killed, survivors;
string leader;

void launchLostFortune(void)
{
	unsigned userChoice = {};
	do {
		displayWelcomeMessage();
		readValuesForGame();
		displayMainStory();

		displayOptionsAfterEndingGame();
		cout << "Select option: ";
		cin >> userChoice;

		switch (userChoice)
		{
			case 1:
				resetTheGame();
				break;
			case 2:
				break;

		}
	} while (userChoice != 2);
}

void displayWelcomeMessage(void)
{
	cout << "Welcome to Lost Fortune \n\n";
	cout << "Please enter the following for your personalized adventure \n";
}

void readValuesForGame(void)
{
	cout << "Enter a number: ";
	cin >> adventures;

	cout << "Enter a number, smaller than the first: ";
	cin >> killed;

	survivors = adventures - killed;

	cout << "Enter your last name: ";
	cin >> leader;
}

void displayMainStory(void)
{
	cout << "\nA brave group of " << adventures << " set out on a quest ";
	cout << "-- in search of the lost treausre of the Ancient Dwarves. ";
	cout << "The group was led by that legendary rogue. " << leader << endl;
	cout << "\nAlong the way, a band of marauding ogres ambushed the party. ";
	cout << "All fought bravely under the command of " << leader;
	cout << ". and the ogres were defeated, but at a cost. ";
	cout << "Of the adventures, " << killed << " were vanguished. ";
	cout << "leaving just " << survivors << " in the gourp. \n";
	cout << "\nThe party was about to give up all hope. ";
	cout << "But while laying the deceased to rest. ";
	cout << "They stumbled upon the buried fortune. ";
	cout << "So the adventures split " << GOLD_PIECES << " gold pieces";
	cout << leader << " held on to the extra " << getEachSurvivorsShareOfGold();
	cout << " pieces to keep things fair of course. \n";
}

double getEachSurvivorsShareOfGold(void)
{
	return GOLD_PIECES % survivors;
}


void displayOptionsAfterEndingGame(void)
{
	cout << "\n\n1. Play again" << endl;
	cout << "2. Exit" << endl;
}

void resetTheGame(void)
{
	cout << "\n\nReseting game..." << endl;
	adventures = {};
	killed = {};
	survivors = {};
	cout << "Ready to play. " << endl << endl;
}
