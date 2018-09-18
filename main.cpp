/******
 * THIS WORK IS IN PUBLIC DOMAIN
 ******/

#include "cmdLineParser.h"
#include <iostream>

int main(int argc, char** argv)
{
	std::vector<std::string> arguments;
	arguments = readArguments(argc, argv);
	std::cout << "Your arguments: \n ";
	for(int i = 0; i<arguments.size(); i++)
	{
		std::cout << arguments.at(i) << std::endl;
	}	
}
