#include <iostream>
#include <fstream>
#include <string>
#include <string.h>
using namespace std;

int main(int argc, char *argv[])
{
    char file_name[50];
    if (argc<2)
    {
        cout<<"Name of file : ";
        cin>>file_name;
    }
    else
    strcpy(file_name,argv[1]);
    fstream myfile;
    myfile.open(file_name);

    if( !myfile.is_open() )
    {
        cout<<"Unable to open file"<<endl;
        return 1;
    }
    myfile.close();


    int choice =1;
    while( (choice>0) && (choice<5) )
    {
        cout<<endl<<"[1] Add new item  "<<endl;
        cout<<"[2] Search "<<endl;
        cout<<"[3] Delete item "<<endl;
        cout<<"[4] List items "<<endl;
        cout<<"[x] Exit "<<endl;
        cout<<"Enter your choice:";
        cin>>choice;
        if( cin.fail() )
        {
           break;
        }
        if( choice ==1 )
        {
            myfile.open(file_name,ios::out | ios::app);
            char name[50];
            char name2[50];
            char number[50];
            char number2[50];
            int price;
            int quantity;
            cout<<endl<<"Name : ";
            cin >> name;
            cin.getline( name2,50);
            strcat(name,name2);
            cout<<"Inventory number : ";
            cin>>number;
            cin.getline(number2,50);
            strcat(number,number2);
            cout<<"Price :  ";
            cin>>price;
            if( cin.fail() )
            {
                cout<<endl<<"Wrong input for price"<<endl;
                break;
            }
            cout<<"Quantity : ";
            cin>>quantity;
            if( cin.fail() )
            {
                cout<<endl<<"Wrong input for quantity"<<endl;
                break;
            }
            myfile.seekp( 0, ios::end );
            myfile<<name<<"#"<<number<<"#"<<price<<"#"<<quantity<<"#"<<endl;
            myfile.close();
        }
        if( choice == 2 )
        {
            int choice2;

            cout<<endl<<"[1] Name"<<endl;
            cout<<"[2] Inventory number"<<endl;
            cout<<"Search by : ";
            cin>>choice2;
            if( (choice2 != 1) && (choice2 != 2) )
            {
                cout<<"Wrong input"<<endl;
                break;
            }
            char search[30];
            char a[100];
            if( choice2 == 1 )
            {
                cout<<endl<<"--> ";
                cin>>search;
                cin.getline(a,100);
                strcat(search,a);
                strcat(search,"\0");
                myfile.open(file_name,ios::in);
                char line[200];
                char name[100];
                char number[100];
                char price[20];
                char quantity[20];
                int ctr=0;
                int ctr2=0;
                int ctr3=1;
                char a[50];
                while( !myfile.eof() )
                {
                    myfile.clear();
                    myfile>>line;
                    myfile.getline(a,200);
                    strcat(line,a);
                    if( myfile.eof() )
                        {
                            break;
                        }
                    while( line[ctr] != '#' )
                    {
                        name[ctr]=line[ctr];
                        ctr++;
                    }
                    name[ctr++] = '\0';
                    while( line[ctr] != '#' )
                    {
                        number[ctr2++]=line[ctr];
                        ctr++;
                    }
                    number[ctr2]='\0';
                    ctr++;
                    ctr2=0;
                    while( line[ctr] != '#' )
                    {
                        price[ctr2++]=line[ctr];
                        ctr++;
                    }
                    price[ctr2]='\0';
                    ctr++;
                    ctr2=0;
                    while( line[ctr] != '#' )
                    {
                        quantity[ctr2++]=line[ctr];
                        ctr++;
                    }
                    quantity[ctr2]='\0';


                    if( strlen(name) >= strlen(search) )
                    {
                        for( ctr=0;ctr<strlen(name)-strlen(search)+1;ctr++)
                        {
                            for( ctr2=0; ctr2<strlen(search);ctr2++ )
                            {
                                if( tolower(search[ctr2]) != tolower(name[ctr+ctr2]) )
                                {
                                    break;
                                }
                            }

                            if( ctr2 == strlen(search) )
                            {
                                cout<<endl<<"["<<ctr3<<"] "<<"Name : "<<name<<endl;
                                cout<<"Inventory number : "<<number<<endl;
                                cout<<"Price :  "<<price<<endl;
                                cout<<"Quantity : "<<quantity<<endl;
                                break;
                            }
                            ctr2=0;
                        }
                        ctr2=0;
                    }
                    ctr2=0;
                    ctr=0;
                    ctr3++;
                }
                cout<<endl;
                myfile.close();
            }
            if( choice2 == 2 )
            {
                cout<<endl<<"--> ";
                cin>>search;
                cin.getline(a,100);
                strcat(search,a);
                strcat(search,"\0");
                myfile.open(file_name,ios::in);
                char line[200];
                char name[100];
                char number[100];
                char price[20];
                char quantity[20];
                int ctr=0;
                int ctr2=0;
                int ctr3=1;
                char a[50];
                while( !myfile.eof() )
                {
                    myfile.clear();
                    myfile>>line;
                    myfile.getline(a,200);
                    strcat(line,a);
                    if( myfile.eof() )
                        {
                            break;
                        }
                    while( line[ctr] != '#' )
                    {
                        name[ctr]=line[ctr];
                        ctr++;
                    }
                    name[ctr++] = '\0';
                    while( line[ctr] != '#' )
                    {
                        number[ctr2++]=line[ctr];
                        ctr++;
                    }
                    number[ctr2]='\0';
                    ctr++;
                    ctr2=0;
                    while( line[ctr] != '#' )
                    {
                        price[ctr2++]=line[ctr];
                        ctr++;
                    }
                    price[ctr2]='\0';
                    ctr++;
                    ctr2=0;
                    while( line[ctr] != '#' )
                    {
                        quantity[ctr2++]=line[ctr];
                        ctr++;
                    }
                    quantity[ctr2]='\0';


                    if( strlen(number) >= strlen(search) )
                    {
                        for( ctr=0;ctr<strlen(number)-strlen(search)+1;ctr++)
                        {
                            for( ctr2=0; ctr2<strlen(search);ctr2++ )
                            {
                                if( tolower(search[ctr2]) != tolower(number[ctr+ctr2]) )
                                {
                                    break;
                                }
                            }
                            if( ctr2 == strlen(search) )
                            {
                                cout<<endl<<"["<<ctr3<<"] "<<"Name : "<<name<<endl;
                                cout<<"Inventory number : "<<number<<endl;
                                cout<<"Price :  "<<price<<endl;
                                cout<<"Quantity : "<<quantity<<endl;
                                break;
                            }
                            ctr2=0;
                        }
                    }
                    ctr2=0;
                    ctr=0;
                    ctr3++;
                }
                cout<<endl;
                myfile.close();
            }
        }
        if( choice == 3 )
        {

            char line[200];
            char a[100];
            char **array = new char* [50];
            int ctr = 1;
            myfile.open(file_name,ios::in);
            while( !myfile.eof() )
            {

                myfile.clear();
                myfile>>line;
                myfile.getline(a,200);
                strcat(line,a);
                if( myfile.eof() )
                {
                    break;
                }
                array[ctr-1] = new char[strlen(line)+1];
                strcpy(array[ctr-1],line);
                ctr++;
            }
            if(ctr-1 == 0)
                {
                    cout<<endl<<"The list is empty"<<endl;
                    continue;
                }
            cout<<endl<<"Which product to be deleted : ";
            int del;
            cin>>del;
            if( cin.fail() )
            {
                cout<<endl<<"Wrong input, insert the number of the product u want to delete."<<endl;
                return 1;
            }
            if( del> (ctr-1) || del<1)
            {
                cout<<"There are only "<<ctr-1<<" products in the list write number between 1 and "<<ctr-1<<endl;
                return 1;
            }
            myfile.close();

            myfile.open(file_name,ios::out);
            for(int i=0;i<(ctr-1);i++)
            {
                if ( i+1 != del)
                myfile<<array[i]<<endl;
            }
            myfile.close();

            for(int i=0;i<ctr-1;i++)
            {
                delete [] array[i];
            }
            delete [] array;


        }
        if( choice == 4 )
        {
            myfile.open(file_name,ios::in);
            char line[200];
            char name[100];
            char number[100];
            char price[20];
            char quantity[20];
            int ctr=0;
            int ctr2=0;
            int ctr3=1;
            char a[50];
            while( !myfile.eof() )
            {

                myfile.clear();
                myfile>>line;
                myfile.getline(a,200);
                strcat(line,a);
                if( myfile.eof() )
                    {
                        break;
                    }
                while( line[ctr] != '#' )
                {
                    name[ctr]=line[ctr];
                    ctr++;
                }
                name[ctr++] = '\0';
                while( line[ctr] != '#' )
                {
                    number[ctr2++]=line[ctr];
                    ctr++;
                }
                number[ctr2]='\0';
                ctr++;
                ctr2=0;
                while( line[ctr] != '#' )
                {
                    price[ctr2++]=line[ctr];
                    ctr++;
                }
                price[ctr2]='\0';
                ctr++;
                ctr2=0;
                while( line[ctr] != '#' )
                {
                    quantity[ctr2++]=line[ctr];
                    ctr++;
                }
                quantity[ctr2]='\0';
                ctr=0;
                ctr2=0;
                cout<<endl<<"["<<ctr3<<"] "<<"Name : "<<name<<endl;
                cout<<"Inventory number : "<<number<<endl;
                cout<<"Price :  "<<price<<endl;
                cout<<"Quantity : "<<quantity<<endl;
                ctr3++;
            }
            if( ctr3 == 1 )
            {
                cout<<endl<<"The list is empty";
            }
            cout<<endl;
            myfile.close();
        }
    }
    return 0;
}
