#include <iostream>
using namespace std;


int findMax();
int getIndexByElem(int elem);
int getSumOfNegativeNumbers();


const int ARRAY_SIZE = 7;


// It's a simple array but you can use custom array from console using cin to get arrays' values from console
const int array[ARRAY_SIZE] = 
{
    2, -4, -1, 0, 15, 13, -1
};



int main(void)
{
    int maxELem = findMax();
    int maxELemIndex = getIndexByElem(maxELem);
    int sumOfNegativeNumbers = getSumOfNegativeNumbers();


    cout << "Max element in array is: " << maxELem << endl;
    cout << "His index is: " << maxELemIndex << endl;
    cout << "Sum of negative numbers is: " << sumOfNegativeNumbers << endl;
}



/**
 * @brief 
 * 
 * Method's alghoritm:
 *     1. Initialize an maxElem variable by index 0 of given array
 *     2. Looping through array with for each statement
 *     3. Create an if statement that means: if maxElem is smaller than the next element in the array, then that element is the biggest.
 *     4. Returning maxElem
 * 
 * @return int max element from global array (you can use params instead like this: int findMax(int array[ARRAY_SIZE]))
 */
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


/**
 * @brief Get the Index in array by element (int)
 * Method's alghoritm:
 *      1. Looping through array
 *      2. If elem is equal to array[i] (elem by index) then return index - i
 * 
 * @param elem that we need to find
 * @return int index of element in array
 */
int getIndexByElem(int elem)
{
    for (int i = 0; i < ARRAY_SIZE; i++)
    {
        if (elem == array[i])
        {
            return i;
        }
    }
}


/** 
 * @brief Get the Sum Of Negative Numbers in array
 * 
 * Method's alghoritm:
 *      1. Init variable sum for storing results
 *      2. Looping through array
 *      3. If array[i] value is less then 0 (is negative) then we add this element in our sum
 * 
 * @return int 
 */
int getSumOfNegativeNumbers() 
{
    int sum = 0;

    for (int i = 0; i < ARRAY_SIZE; i++)
    {
        if (array[i] < 0)
        {
            sum += array[i];
        }
    }

    return sum;
}
