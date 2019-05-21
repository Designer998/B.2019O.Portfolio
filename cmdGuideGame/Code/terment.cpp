//Mikhail
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include "parser.h"
#include "script.h"

int main() {
Parser prse;
std::string inpt;
std::cout<<"\nWelcome to ComManDo! Ver D-0.1 Build No2";
std::cout<<"\nType dir to look around, type cd to move around." << std::endl;
std::cout<<"\n>";
std::getline (std::cin,inpt);
prse.in (inpt);
std::getline(std::cin,inpt);
prse.in(inpt);
}
