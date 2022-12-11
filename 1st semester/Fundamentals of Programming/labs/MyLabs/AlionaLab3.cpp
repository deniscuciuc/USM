#include <bits/stdc++.h>

using namespace std;

int main(void) {
    string text;
    cout << "Enter text: ";
    getline(cin, text);
    
    unordered_map<char, int> dictionary;
 
    for(char letter : text)
    {
        dictionary[letter]++;
    }
    
    cout << "Unique letters in text : ";
    for(char letter : text)
    {
        if(dictionary[letter] != 0)
        {
            if (dictionary[letter] == 1)
            {
                cout << letter << " ";
                dictionary[letter] = 0;
            }
        }
    }
    cout << endl << endl;
    return 0;
}