#include<bits/stdc++.h>
#include <fstream>
using namespace std;

#define MOD 101
#define SIZE 101
int sz,sz1;

int line=1;
string arraKeyword[20]={"if","for","while","else if","else","int","char","break","stdio","case","return","include","continue","void","class","public"};

ofstream keyFile;
ofstream idFile;

int hash_func(string str)
{
    int i;
    int hash=0;
    for(i=0; str[i]!='\0' ; i++)
    {
        hash += str[i]^i * 27;
        hash %= MOD;
    }
    return hash;
}

class symbolInfo
{
public:
    string name;
    string type;

    symbolInfo(string n,string t){

            name = n;
            type = t;
           // cout<<"in symbolinfo "<<type<<endl;
    }

};

class symbolTable
{
public:
    int key,count1=0;
    vector <symbolInfo*> table[SIZE];


     void insert(string n,string t){
        string tp=t;
        string symb=n;
        //cout<<"in insert "<<tp<<endl

        symbolInfo *e= new symbolInfo(n,t);
        key=hash_func(symb);

        table[key].push_back(e);
      //   lookup(symb,tp);
        cout<<endl<<n<<"  "<<"inserted at position "<<key<<","<<table[key].size()<<endl;

    }

    void print(){
       for(int i=0;i<SIZE;i++){
           if(table[i].size()==0)
           continue;

         vector<symbolInfo*> :: iterator it;

         cout<<i<<"->";

         for(it=table[i].begin();it!=table[i].end();it++){
             symbolInfo *e= *it;
             //if()
             cout<<"     "<<"("<<e->name<<","<<e->type<<")  ";

         }
         cout<<endl;
       }
        cout<<endl<<endl;
    }
    //your code
}symtab;


void identifier(string read){
    int i ,readCount=0,temp=0;

    while(read[readCount]!='\0'){
                char keyword[140];temp=0;
                    while(read[readCount]==' ' || read[readCount]=='\t')
                        readCount++;

                    char keyword2[140];
                    i=0;
                    if((read[readCount]>='A' && read[readCount]<='Z')||(read[readCount]>='a' && read[readCount]<='z') || read[readCount]=='_')
                    for(i=0;read[readCount]!='\0' && ((read[readCount]>='A' && read[readCount]<='Z')||(read[readCount]>='a' && read[readCount]<='z') || (read[readCount]>='0' && read[readCount]<='9'))|| read[readCount]=='_' ;i++){
                        keyword2[i]=read[readCount++];
                    }

                    keyword2[i]='\0';

                    if(keyword2[0]!='\0'){
                            int tmp=0;
                            for(int j=0 ;j<15;j++){
                                if(keyword2==arraKeyword[j]){
                                    tmp=1;
                                    keyFile<<keyword2<<"  "<<line<<endl;
                                                    //cout<<keyword<<endl;
                                                    symtab.insert(keyword2,"KEYWORD");
                                                    cout<<keyword2<<" found at line:   "<<line<<endl;
                                                    symtab.print();
                                    break;
                                }
                            }
                            if(tmp==0){
                                cout<<keyword2<<" found at line: "<<line<<endl;
                                idFile <<keyword2<<"  "<<line<<endl;
                                symtab.insert(keyword2,"IDENTIFIER");
                                symtab.print();}
                    }

            if(read[readCount]=='\0')
                break;
                readCount++;
        }
}

int main(){
    string read;
    ifstream myfile ("sample input.txt");

    keyFile.open ("output_keyword.txt");
    idFile.open ("output_identifier.txt");

    getline (myfile,read);
    cout<<endl<<"enter your choice:\n1.keyword\n2.identifier\n3.function"<<endl;

    getline (myfile,read);
    line++;
   while(1){
        identifier(read);

        if(getline (myfile,read)){
                line++;
        }
        else{
            myfile.close();
            break;}

   }

   keyFile.close();
   idFile.close();
}
