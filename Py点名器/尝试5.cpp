
#include <iostream>
#include <fstream>
#include <ctime>
#include <string>
using namespace std;
 
string getRandLine(const string& fileName )
{
	ifstream inf(fileName.c_str()) ;
	string lineData ;
	int i = 1 ;
	string tmpLine ;
	srand((unsigned int)time(NULL)) ;
	while (getline(inf, tmpLine))
	{
		if (rand()%i == 0)
			lineData = tmpLine ;
		++ i ;
	}
	inf.close() ;
	return lineData ;
}
 
 
int main(int argc, char** argv)
{
	cout << getRandLine("data.txt") << endl ;
	return 0 ;
}
