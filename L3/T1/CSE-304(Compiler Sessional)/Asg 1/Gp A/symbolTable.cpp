#include <iostream>
#include <stdio.h>
#include <list>
#include <string.h>
using namespace std;

#define MOD 101
#define SIZE 101

//change this function
int hash_func(char str[])
{
   //your code here

}

class symbolInfo
{
public:
    char *name;
    char *type;
//your code
};

class symbolTable
{
public:
    list <symbolInfo> stable[SIZE];
    //your code
};




int main()
{

    symbolTable symtab; // define as per your requirement
    symbolInfo syminf; // define as per your requirement

    //your code, variable declaration

     //input from file


    while(true)
    {
        switch(first)
        {
            case 'I':		//insert
                //your code
                printf("Inserted\n");
                break;
            case 'D':		//delete
                //your code
                printf("Deleted\n");
                break;
            case 'L': //Search Info
                //your code
                printf("Searched\n");
                break;
            case 'P': //show symbol table
                //your code
                printf("Printed\n");
                break;
            default:   // if user gives any wrong input
                printf("Wrong input\n");
                break;

        }

    }

    return 0;
}
