///* See LICENSE file for copyright and license details. */
///* Default settings; can be overriden by command line. */
//
//static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
///* -fn option overrides fonts[0]; default X11 font or font set */
//static const char *fonts[] = {
//	"NotoSansMono Nerd Font:size=10"
//};
//static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
//static const char *colors[SchemeLast][2] = {
//	/*     fg         bg       */
//	[SchemeNorm] = { "#a89984", "#1d2021" },
//	[SchemeSel] = { "#ebdbb2", "#458588" }, /*#005577*/
//	[SchemeOut] = { "#000000", "#00ffff" },
//};
///* -l option; if nonzero, dmenu uses vertical list with given number of lines */
//static unsigned int lines      = 0;
//
///*
// * Characters not considered part of a word while deleting words
// * for example: " /?\"&[]"
// */
//static const char worddelimiters[] = " ";

/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"Product Sans:size=12"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
    /*     fg         bg       */
	[SchemeNorm] = { "#cdd6f4", "#1e1e2e" },
	[SchemeSel] = { "#1e1e2e", "#89dceb" },
	[SchemeOut] = { "#000000", "#89dceb" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 5;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
