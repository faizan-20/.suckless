//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		                    /*Update Interval*/	    /*Update Signal*/
	{" : ",    "~/.local/bin/statusbar/pacupdate",		360,		        9},
	{" : ",	"~/.local/bin/statusbar/memory",		10,					1},
	{" : ",	"~/.local/bin/statusbar/clock",			5,					0},
	{"",		"~/.local/bin/statusbar/battery",		5,					3},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
