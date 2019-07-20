#include<iostream>
#include<stdio.h>
#include <string.h>
#include <list>
#include <stdlib.h>
#include <fstream>

using namespace std;

#define MOD 101
#define SIZE 101

int hash_func(char str[])
{
   int hash= rand()%101;


    return hash;
}
class SymbolInfo
{
public:
    char *name;
    char *type;
SymbolInfo(string n, string t)     //constructor
    {


       int n1=n.length();
        name= new char[20];

        int n2=t.length();
        type=new char[20];


       int i,j;

        for(i=0; i<n1; i++)
        {
            name[i]=n[i];
        }
        name[i]=NULL;

        for(j=0; j<n2; j++)
        {
            type[j]=t[j];
        }
        type[j]=NULL;
    }

};

class SymbolTable
{
public:
    list <SymbolInfo> stable[SIZE];
    list <SymbolInfo>::iterator iter;

    void insert(char *n, char *t,ofstream &out)
    {
        SymbolInfo si(n,t);
        int hash = hash_func(si.name);
        stable[hash].push_back(si);
        out<<"<"<<si.name<<","<<si.type<<">"<<" inserted at ";   ///find the position by yourself
        out<<endl;


    }
    void print(ofstream &out)
    {
        for(int i=0;i<SIZE;i++)
             {

                 out<<i<<"------->";
                 for(iter=stable[i].begin();iter!=stable[i].end();iter++)
                 {
                      out<<"<"<<iter->name<<","<<iter->type<<">"<<" ";
                 }
                 out<<endl;
             }
    }
};
int main()
{
    ifstream in("input.txt");
    ofstream out("output.txt");

    char first;
    char *name;
    char *type;
    SymbolTable symtab;


    if(!in)
    {
        out<<"Can't open file.\n"<<endl;
        return 0;
    }

    while(in)
    {

        char temp[SIZE];
        in.getline(temp,SIZE);

        out<<"Input :"<<temp<<endl;
        first=temp[0];

          char* chars_array = strtok(temp, " ");
          int ax=0;
        while(chars_array)
        {

            if(ax==1) name=chars_array;
            if(ax==2)  type=chars_array;
            ax++;
            chars_array = strtok(NULL, " ");
        }


        if(first=='I')
        {
         out<<"Output :\n";
            symtab.insert(name,type,out);
            out<<endl;
            out<<endl;
        }
        else if(first=='P')
        {
            //cout<<1;
            symtab.print(out);
            out<<endl;
            out<<endl;

        }

        else if(first=='D')
        {

        }
        else if(first=='L')
        {

        }



    }

}
