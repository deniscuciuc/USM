#include <iostream>
#include <iomanip>

const int arraySize = 5;

int getNumberOfDifferentNumbersFromArray(int array[arraySize]);


int getNumberOfDifferentNumbersFromArray(int array[arraySize])
{
	int result = 0;
	for (int i = 0; i < arraySize; i++)
	{
		int numberOfSameNumbers = 0;
		for (int j = i + 1; j < arraySize; j++)
		{
			if (array[i] == array[j])
				numberOfSameNumbers++;
		}

		if (numberOfSameNumbers == 0)
			result++;
	}
	return result;
}