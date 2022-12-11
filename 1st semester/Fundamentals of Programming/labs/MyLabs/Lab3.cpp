#include <bits/stdc++.h>

using namespace std;

void converStringToCharArray(string sentence, char* sentenceChar);
int countSameWords(char *str, string word);

int main(void)
{
    string sentence;
    cout << "Enter sentence : ";
    getline(cin, sentence);

    char senteceChar[sentence.size()];
    converStringToCharArray(sentence, senteceChar);

    string word = "";
    for (int i = 0; i < sentence.size(); i++)
    {   
        if (sentence.at(i) == ' ' && sentence.at(i + 1) != ' ')
        {
            cout << word << " " << countSameWords(senteceChar, word) << endl;
            word = "";
        }
        else
        {
            word += sentence.at(i);
        }
    }

    return 0;
}

void converStringToCharArray(string sentence, char* sentenceChar)
{
    for (int i = 0; i < sentence.size(); i++) 
    {
        sentenceChar[i] = sentence.at(i);
    }
}

int countSameWords(char* sentence, string word)
{
    char *p;
 
    vector<string> a;

    p = strtok(sentence, " ");
    while (p != NULL)
    {
        a.push_back(p);
        p = strtok(NULL, " ");
    }
 
    int counter = 1;
    for (int i = 0; i < a.size(); i++)
    {
        if (word == a[i]) counter++;
    }
    
    return counter;
}