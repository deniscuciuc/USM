#define _USE_MATH_DEFINES

#include <iostream>
#include <cmath>
#include <iomanip>


const int arraySize = 5;

int getOneNumberThatIsPresentInAllArrays(int firstArrray[arraySize], int secondArray[arraySize], int thirdArray[arraySize]);

int main(void)
{
	int firstArray[arraySize] = { 2,1,0,25,15 };
	int secondArray[arraySize] = { 2,1,0,21,11 };
	int thirdArray[arraySize] = { 3,3,15,20,2 };

	std::cout << "Number found in three arrays : " << getOneNumberThatIsPresentInAllArrays(firstArray, secondArray, thirdArray) << std::endl;
}

int getOneNumberThatIsPresentInAllArrays(int firstArrray[arraySize], int secondArray[arraySize], int thirdArray[arraySize])
{
	for (int i = 0; i < arraySize; i++)
	{
		for (int j = 0; j < arraySize; j++)
		{
			if (firstArrray[i] == secondArray[i])
			{
				for (int k = 0; j < arraySize; k++)
				{
					if (firstArrray[i] == thirdArray[i])
						return thirdArray[i];
				}
			}
		}
	}
}

