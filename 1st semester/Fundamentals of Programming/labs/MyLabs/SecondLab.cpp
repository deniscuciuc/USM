#include <iostream>

const int arraySize = 5;

int getOneNumberThatIsPresentInAllArrays(int firstArrray[arraySize], int secondArray[arraySize], int thirdArray[arraySize]);

int main() {
	int firstArray[arraySize] = { 2,1,0,25,15 };
	int secondArray[arraySize] = { 2,1,0,21,11 };
	int thirdArray[arraySize] = { 3,3,15,20,2 };

	std::cout << "Number found in three arrays : " << getOneNumberThatIsPresentInAllArrays(firstArray, secondArray, thirdArray) << std::endl;

	return 0;
}

int getOneNumberThatIsPresentInAllArrays(int firstArray[arraySize], int secondArray[arraySize], int thirdArray[arraySize])
{
	for (int i = 0; i < arraySize; i++)
	{
		for (int j = 0; j < arraySize; j++)
		{
			if (firstArray[i] == secondArray[j])
			{
				for (int k = 0; j < arraySize; k++)
				{
					if (firstArray[i] == thirdArray[k])
						return firstArray[i];
				}
			}
		}
	}
}