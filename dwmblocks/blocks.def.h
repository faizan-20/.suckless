//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {" : ",    "uname -r",           360,                2},
	//{" : ",    "pacupdate",        360,                9},
	{" : ",	"memory",	        10,	                1},
	{"",	    "battery",	        5,	                3},
	{" : ",	"clock",	        5,	                0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
