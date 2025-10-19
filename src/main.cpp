/*
 * Main.cpp
 * Written by : Cameron Ross
 * Last Edit  : October 19
 */

#include "MenuLib/Menu.hpp"
#include "MenuLib/Option.hpp"

int main()
{
	// initialize the main menu
	MenuLib::Menu mainMenu("Main Menu", true);

	mainMenu.run();
	return 0;
}
