#include <iostream>
#include <fstream>
#include <string>
#include <string.h>
#include <vector>
using namespace std;

class Product
{
 private:
  char name[50];
  char number[50];
  int price;
  int quantity;

 public:
  Product();
  Product(char*, char*, int, int);
  char* getName(void){ return name; };
  char* getNumber(void) { return number; };
  int getPrice(void) { return price; };
  int getQuantity(void) { return quantity; };
  void setProduct(char*, char*, int, int);
  void printProduct()
  {
  cout<<"Name : "<<name<<endl;
  cout<<"Inventory number : "<<number<<endl;
  cout<<"Price : "<<price<<endl;
  cout<<"Quantity : "<<quantity<<endl;
  };
} product;

Product::Product(){};

Product::Product(char *n, char *no, int p, int q)
 {
  strcpy(name, n);
  strcpy(number,no);
  price=p;
  quantity=q;
 };

void Product::setProduct(char *n, char *no, int p, int q)
 {
  strcpy(name, n);
  strcpy(number,no);
  price=p;
  quantity=q;
 };



void write_file(char* file_name, vector<Product> products)
 {
 fstream myfile;
 myfile.open(file_name,ios::out);
 for(int i=0;i<products.size(); i++)
  {
    myfile<<products.at(i).getName()<<"#"<<products.at(i).getNumber()<<"#"<<products.at(i).getPrice()<<"#"<<products.at(i).getQuantity()<<"#"<<endl;
  }
 myfile.close();
 }

void read_file(char* file_name, vector<Product> &products)
 {
 fstream myfile;
 myfile.open(file_name,ios::in);
 char line[200];
 char name[50];
 char number[50];
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
 //products.reserve(products.size()+1);
//  Product *p = new Product(name,number,atoi(price), atoi(quantity));

//   products.push_back(*p);
   ctr3++;
  }
 if( ctr3 == 1 )
  {
   cout<<endl<<"The list is empty";
  }
 cout<<endl;
 myfile.close();
 }

int main(int argc, char *argv[])
{
 char open_file[50];

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
  strcpy(open_file,file_name);
  int number_of_lines = 0;
  if( !myfile.is_open() )
  {
   cout<<"Unable to open file"<<endl;
   return 1;
  }else
  {
   std::string line;
   while (std::getline(myfile, line))
   ++number_of_lines;
  }
myfile.close();
//Product *productArray;
std::vector<Product> productArray;
//productArray= new Product[number_of_lines+1];

read_file(file_name, productArray);

int choice =1;
while( (choice>0) && (choice<8) )
 {
  cout<<endl<<"[1] Add new item "<<endl;
  cout<<"[2] Search "<<endl;
  cout<<"[3] Delete item "<<endl;
  cout<<"[4] List items "<<endl;
  cout<<"[5] Open "<<endl;
  cout<<"[6] Save "<<endl;
  cout<<"[7] Save As... "<<endl;
  cout<<"[x] Exit "<<endl;
  cout<<"Enter your choice:";
  cin>>choice;
  if( cin.fail() )
  {
  break;
  }
  if( choice ==1 )
  {
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
   cout<<"Price : ";
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

   Product *p = new Product(name,number, price, quantity);

   productArray.push_back(*p);


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
    cout<<"--> ";
    cin>>search;
    for(int i=0;i<productArray.size(); i++)
    {
     if(!strcmp(search,productArray.at(i).getName()))
     {
      productArray.at(i).printProduct();
     }
    }
   }
   if( choice2 == 2 )
   {
    cout<<endl<<"--> ";
    cin>>search;
    for(int i=0;i<productArray.size(); i++)
    {
     if(!strcmp(search,productArray.at(i).getNumber()))
     {
      productArray.at(i).printProduct();
     }
    }
   }
  }
  if( choice == 3 )
  {

   if(productArray.size() == 0)
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
  if( del> productArray.size() || del<0)
   {
    cout<<"There are only "<<productArray.size()<<" products in the list write number between 0 and "<<productArray.size()<<endl;
    return 1;
   }
  productArray.erase(productArray.begin()+del);

 }
  if( choice == 4 )
  {
   if(productArray.size()>0)
   {
    for(int i=0;i<productArray.size();i++)
    {
    cout<<endl<<"["<<i<<"] ";
    productArray.at(i).printProduct();
    }
   }else
   {
    cout<<endl<<"The list is empty";
   }
  }
  if( choice == 5 )
  {
  cout<<"Enter file name: ";
  char file_name1[50];
  cin>>file_name1;
  fstream myfile1;
  myfile1.open(file_name1);
  number_of_lines = 0;
  if( !myfile1.is_open() )
   {
    cout<<"Unable to open file"<<endl;
    return 1;
   }else
    {
     //cout<<"opening file.."<<endl;
     std::string line;
     while (std::getline(myfile1, line))
     {
      ++number_of_lines;
      //cout<<line<<endl;
     }

    }
 myfile.close();
 productArray.clear();
 strcpy(open_file,file_name1);
 //cout<<"Number:"<<number_of_lines<<endl;

 read_file(file_name1, productArray);

  }
  if(choice == 6)
   {
    write_file(open_file, productArray);

   }

  if(choice == 7)
  {
  char file_name3[50];
  cout<<"Enter name for the file:";
  cin>>file_name3;
  write_file(file_name3, productArray);
  strcpy(open_file,file_name3);
  }
 }
 return 0;
}
