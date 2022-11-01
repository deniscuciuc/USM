#include <iostream>
#include <iomanip>

const int arraySize = 10;

int findIndexOfFirstZeroElemenElement(int array[arraySize]);
int findIndexOfLastZeroElement(int array[arraySize]);


int findIndexOfFirstZeroElemenElement(int array[arraySize])
{
	int index = 0;
	for (int i = arraySize - 1; i >= 0; i--)
	{
		if (array[i] == 0)
			index = i;
	}
	return index;
}

int findIndexOfLastZeroElement(int array[arraySize])
{
	int index = 0;
	for (int i = 0; i < arraySize; i++)
	{
		if (array[i] == 0)
			index = i;
	}
	return index;
}
