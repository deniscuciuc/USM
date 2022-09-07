#include <iostream>
#include <cmath>

// result -> w

float getXFromUser(void);
float getEFromUser(void);

int main(void)
{
    double result = {};
    float a = 2.5,
          x = getXFromUser(),
          e = getEFromUser();
          

    if (x > a)
    {
        result = pow(x, 3) * sqrt(x - a);
    }

    if (x == a)
    {
        result = x * sin(a * x);
    }

    if (x < a)
    {
        result = pow(e, (-a * x)) * cos(a * x);
    }

    std::cout << "\nResult: " << result;


}


float getXFromUser(void)
{
    float x = {};

    std::cout << "\nEnter x: ";
    std::cin >> x;

    return x;
}

float getEFromUser(void)
{
    float e = {};

    std::cout << "\nEnter e: ";
    std::cin >> e;

    return e;
}