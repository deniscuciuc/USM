#include <iostream>

using namespace std;

int findMax();
int findMinIndexByElem(int elem);
int findMaxIndexByElem(int elem);
float getAverageOfPositiveNumbers();


const int ARRAY_SIZE = 7;

const int array[ARRAY_SIZE] = 
{
    2, 15, -1, 15, -3, 15, -1
};


int main(void)
{
    int maxElem = findMax();
    int minIndex = findMinIndexByElem(maxElem);
    int maxIndex = findMaxIndexByElem(maxElem);
    float averageOfPositiveNumbers = getAverageOfPositiveNumbers();

    cout << "Max elem is: " << maxElem << endl;
    cout << "Min index is: " << minIndex << endl;
    cout << "Max index is: " << maxIndex << endl;
    cout << "Average of positive numbers is: " << averageOfPositiveNumbers << endl;
}


int findMax()
{
    int maxELem = array[0];

    for (int i = 0; i < ARRAY_SIZE; i++) 
    {
        if (maxELem < array[i]) 
        {
            maxELem = array[i];
        }
    }

    return maxELem;
}


int findMinIndexByElem(int elem)
{
    int index = -1;

    for (int i = 0; i < ARRAY_SIZE; i++)
    {
        if (elem == array[i])
        {
            if (index == -1)
            {
                index = i;
            } else if (index > i)
            {
                index = i;
            }
        }
    }

    return index;
}


int findMaxIndexByElem(int elem)
{
    int index = -1;

    for (int i = 0; i < ARRAY_SIZE; i++)
    {
        if (elem == array[i])
        {
            if (index == -1)
            {
                index = i;
            } else if (index < i)
            {
                index = i;
            }
        }
    }

    return index;
}

float getAverageOfPositiveNumbers()
{
    int sum = 0;
    int counter = 0;

    for (int i = 0; i < ARRAY_SIZE; i++)
    {
        if (array[i] > 0)
        {
            sum += array[i];
            counter++;
        }
    }

    float avg = (float)sum / (float)counter;

    return avg;
}

