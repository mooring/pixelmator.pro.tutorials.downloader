// ******************************************************************
// Copyright (c) mooring@live.com All rights reserved.
// This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 3.
// THE CODE IS PROVIDED ?AS IS?, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH
// THE CODE OR THE USE OR OTHER DEALINGS IN THE CODE.
// ******************************************************************
#ifndef GETPAGE_H_INCLUDED
#define GETPAGE_H_INCLUDED

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

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
