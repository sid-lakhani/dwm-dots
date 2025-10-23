static const Block blocks[] = {

/*Icon*/      /*Command*/       /*Update Interval*/    /*Update Signal*/
  {"",  "music",     0,            11},
  {"",  "volume",    1,            10},
  {"",  "clock",     10,           1},
  {"",  "internet",  5,            4},
  {"",  "battery",   5,            4},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
