#include <iostream>

int main()
{
    using std::cout;
    using std::endl;

    int n_int = INT_MAX;
    short n_short = SHRT_MAX;
    long n_long = LONG_MAX;
    long long n_llong = LLONG_MAX;

    cout << "Size of demonstrate: " << endl;
    cout << "int is " << sizeof(int) << " bytes" << endl;
    cout << "short is " << sizeof n_short << " bytes" << endl;
    cout << "long is " << sizeof n_long << " bytes" << endl;
    cout << "long long is " << sizeof n_llong << " bytes" << endl;

    cout << "Max values: " << endl;
    cout << "int: " << n_int << endl;
    cout << "short: " << n_short << endl;
    cout << "long: " << n_long << endl;
    cout << "long long: " << n_llong << endl;

    cout << "Min int value: " << INT_MIN << endl;
    cout << "Bits per byte = " << CHAR_BIT << endl;

    // unsigned cant hold negative numbers and can be used with short, int, long, long long
    unsigned int age = {};
    cout << age;



}
