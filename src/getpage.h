#ifndef GETPAGE_H_INCLUDED
#define GETPAGE_H_INCLUDED

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#pragma once
#pragma warning(disable: 4996)

#if defined(_WIN32) || defined(_WIN64)
    #define popen  _popen
    #define pclose _pclose
#endif

#define MAX_IMGS 75
#define FND_GRPS 3
#define FND_CHRS 128
#define RES_CMDS 128
#define FUD_CHRS 256
#define PXY_CHRS 128
#define URL_CHRS 256
#define MAX_LINE 512
#define CMD_CHRS 1024
#define TXT_CHRS 4096
#define OPEN_ERR 1

#endif // GETPAGE_H_INCLUDED
