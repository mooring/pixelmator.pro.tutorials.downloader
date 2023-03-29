#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#pragma once
#pragma warning(disable: 4996)

#if defined(_WIN32) || defined(_WIN64)
    #define popen  _popen
    #define pclose _pclose
#endif

#define MAX_IMGS 50
#define FND_GRPS 3
#define FND_CHRS 128
#define FUD_CHRS 256
#define PXY_CHRS 128
#define URL_CHRS 256
#define MAX_LINE 512
#define CMD_CHRS 1024
#define TXT_CHRS 4096
#define OPEN_ERR 1