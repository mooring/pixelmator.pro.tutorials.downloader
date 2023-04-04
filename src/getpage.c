#include "getpage.h"

char proxyConf[PXY_CHRS] = {0};

int getString(char* src, char* find, char ret[])
{
    char* prev = strstr(src, find) + strlen(find) + 2;
    char* dblq = strpbrk(prev, "\"<");
    *dblq=0;
    sprintf(ret, "%s", prev);
    return 0;
}

void extractResources(
    const char  *search_begin[],
    const int   begin_size,
    const char  *search_end[],
    const int   end_size,
    int         *urlCount,
    char        urls[][URL_CHRS],
    char        process_line[TXT_CHRS]
)
{
    char temp_line[TXT_CHRS]  = {0};
    int  i , j, k = *urlCount, len, find;
    char *next = NULL, *ps = NULL, *pe = NULL, *pee = NULL, *lp = NULL;
    strcpy(temp_line, process_line);
    lp = temp_line;
    for (i = 0; i < begin_size; i++)
    {
        find = 0;
        ps = strstr(lp, search_begin[i]);
        if (ps)
        {
            next = ps + strlen(search_begin[i]);
            pee = strpbrk(next, "\'\")");
            for (j = 0; j < end_size; j++)
            {
                pe = strstr(next, search_end[j]);
                if (!find && pe && pe < pee)
                {
                    len = pe + strlen(search_end[j]) - next;
                    strncpy(urls[k], next, URL_CHRS);
                    urls[k][len] = 0;
                    ps = strstr(lp, urls[k]);
                    len = strrchr(urls[k], '/') - urls[k];
                    // printf("urls[%d] %d=%s\n", k, len, urls[k]);
                    // strip out relative urls
                    if(strstr(urls[k],"http") || strstr(urls[k],"//"))
                    {
                        // strip internet host and path parts from the source code
                        memcpy(ps, "./img", 5);
                        memcpy(ps + 5, ps + len, strlen(ps + len));
                        // strip out addition text from source code
                        *(ps + 5 + strlen(ps + len)) = 0;
                    }
                    else
                    {
                        memset(urls[k], 0, URL_CHRS);
                        k--;
                    }
                    //back loop up for next search token
                    if (strstr(next, search_begin[i]))
                    {
                        lp = next;
                        i--;
                    }
                    find = 1;
                    k++;
                }
            }
            *urlCount = k;
        }
    }
    strcpy(process_line, temp_line);
}
int getTextWebpage(
    const char *url,
    const char *match_start,
    const char *match_end,
    const int  include_end,
    const char *search_begin[],
    const int  begin_size,
    const char *search_end[],
    const int  end_size,
    FILE       *hp,
    char       urls[][URL_CHRS]
)
{
    FILE *fp = NULL;
    char curlcmd[URL_CHRS]  = {0};
    char line[TXT_CHRS]     = {0};
    int  start = 0, matched = 0, k = 0;
    sprintf(
        curlcmd, "curl %s \"%s\" 2>NUL",
        strlen(proxyConf) ? proxyConf : "", url
    );
    fp = popen(curlcmd, "r");
    if (fp == NULL)
    {
        perror("initial request error");
        return OPEN_ERR;
    }
    while (fgets(line, sizeof(line), fp) != NULL)
    {
        if (start && matched)
        {
            break;
        }
        if (strstr(line, match_start) != NULL)
        {
            start = 1;
        }
        if (start && !matched)
        {
            extractResources(search_begin, begin_size, search_end, end_size, &k, urls, line);
            if (strstr(line, match_end) != NULL)
            {
                matched = 1;
            }
            if((matched && include_end) || !matched)
            {
                fprintf(hp, "%s", line);
            }
        }
        memset(line, 0, sizeof(line));
    }
    pclose(fp);
    return k;
}

void writeHtmlHead(FILE *fp, char *title, char *style, char *extra)
{
    fprintf(fp,"%s\n", "<!doctype html>");
    fprintf(fp, "%s\n", "<html lang = 'en-US'>");
    fprintf(fp, "%s\n", "<head>");
    fprintf(fp, "%s\n", "<meta charset = 'utf-8' />");
    fprintf(fp, "<title>%s</title>\n", strlen(title) ? title : "Pixelmator Pro Tutorials");
    fprintf(fp, "%s\n", "<meta name='author' content = 'mooring@codernote.club' />");
    fprintf(fp, "%s\n", "<meta name='description' content = 'Pixelmator Pro Tutorial' />");
    fprintf(fp, "%s\n", "<meta name='viewport' content = 'width=device-width,initial-scale=1' />");
    fprintf(fp, "%s%s' />\n", "<link rel='stylesheet' type='text/css' href='../../assets/",style);
    fprintf(fp, "%s\n", "<script type='text/javascript' src='../../assets/jquery.min.js'></script>");
    fprintf(fp, "%s\n", extra);
    fprintf(fp, "%s\n", "</head><body>");
}

void writeHTMLEnd(FILE *fp)
{
    fprintf(fp, "%s\n", "<script type='text/javascript' src='../../assets/fixvideo.js'></script>");
    fprintf(fp, "%s\n", "</body></html>");
    fclose(fp);
}

void downloadResources(char* folder, char urls[][URL_CHRS], int urlCount)
{
    char fname[URL_CHRS]   = {0};
    char curlcmd[CMD_CHRS] = {0};
    char fullurl[URL_CHRS] = {0};
    char resurl[URL_CHRS]  = {0};
    int  i, len;
    for (i = 0; i < urlCount; i++)
    {
        strcpy(resurl, urls[i]);
        len = strrchr(resurl, '/') - resurl;
        sprintf(
            fullurl,
            "%s%s",
            strstr(resurl, "://") != NULL ? "" : "https:",
            resurl
        );
        memcpy(fname, resurl + len + 1, strlen(resurl));
        sprintf(
            curlcmd,
            "@if not exist \"..\\%s\\img\\%s\" "
            "curl %s -o \"..\\%s\\img\\%s\" \"%s\" %s",
            folder, fname,
            strlen(proxyConf) ? proxyConf : "",
            folder, fname, fullurl,
            strstr(resurl,".mp4")||strstr(resurl,".zip") ? "" : "2>NUL"
        );
        printf("downloading %s\n", fullurl);
        system(curlcmd);
    }
}

void prepareTextTuroial(char *url, char *folder, char *title)
{
    FILE  *fp         = NULL;
    int   urlCount    = 0;
    const char* match_start    = "<section class=";
    const char* match_end      = "</section>";
    const char* search_begin[] =
    {
        "src=\"", "srcset=\"", "href=\"",
        "src='", "srcset='", "href='",
        "x, ", "1x, ", "2x, ",
        "poster=\"", "url(", "url(\""
    };
    const char* search_end[]   =
    {
        ".png", ".jpg", ".gif", ".mov", ".mp4", ".zip",
        ".png ", ".jpg ", ".gif ", ".jpeg", ".jpeg "
    };
    char page_file[CMD_CHRS]       = {0};
    char urls[MAX_IMGS][URL_CHRS] = {0};

    sprintf(page_file, "..\\%s\\index.html", folder);
    printf("saving tutorial to %s\\index.html\n", folder);
    fp = fopen(page_file, "w");
    if(fp == NULL)
    {
        perror("writing error: index.html");
        return;
    }
    writeHtmlHead(fp, title, "styles.css","");
    urlCount = getTextWebpage(
                   url, match_start, match_end, 1,
                   search_begin, sizeof(search_begin)/sizeof(search_begin[0]),
                   search_end, sizeof(search_end)/sizeof(search_end[0]),
                   fp, urls
               );
    writeHTMLEnd(fp);
    if(urlCount)
    {
        downloadResources(folder, urls, urlCount);
    }
}
// parse the pixelmator.com tutorial page
int parseTutorialPage(char *url, char find[][FND_CHRS], char info[][FUD_CHRS])
{
    int  i, count       = 0;
    char *fstr          = NULL;
    FILE *fp            = NULL;
    char cmd[CMD_CHRS]  = {0};
    char line[TXT_CHRS] = {0};
    char ctx[TXT_CHRS]  = {0};
    char *titlefix      = "t-hero-title";

    sprintf(cmd,"curl %s \"%s\" 2>NUL",strlen(proxyConf) ? proxyConf : "",url);
    fp = popen(cmd, "r");
    if(fp == NULL)
    {
        perror("init curl error\n");
        return OPEN_ERR;
    }
    while(fgets(line, sizeof(line), fp) != NULL)
    {
        if(count >= FND_GRPS)
        {
            break;
        }
        for(i=0; i<FND_GRPS; i++)
        {
            fstr = find[i];
            memset(ctx, 0, sizeof(ctx));
            memcpy(ctx, line, sizeof(line));
            if(strstr(ctx, fstr))
            {
                getString(ctx, fstr, info[i]);
                count++;
            }
            // fix title can't be got on text based tutorial page
            if(i==0 && strlen(info[0])==0 && strstr(ctx, titlefix))
            {
                getString(ctx, titlefix, info[i]);
                count++;
            }
        }
        memset(line, 0, sizeof(line));
    }
    pclose(fp);
    return 0;
}

void prepareTextGuide(char *url, char *id, char *folder, char *title)
{
    FILE  *fp         = NULL;
    int   urlCount    = 0;
    const char* match_start    = "<div class=\"current-page l-wrapper\"";
    const char* match_end      = "<footer ";
    const char* search_begin[] =
    {
        "src=\"", "srcset=\"", "href=\"",
        "src='", "srcset='", "href='",
        "x, ", "1x, ", "2x ,",
        "poster=\"", "url(", "url(\""
    };
    const char* search_end[]   =
    {
        ".png", ".jpg", ".gif", ".mov", ".mp4", ".zip",
        ".png ", ".jpg ", ".gif ", ".jpeg", ".jpeg "
    };
    char mkdir_cmd[CMD_CHRS]       = {0};
    char curl_cmd[CMD_CHRS]        = {0};
    char page_file[CMD_CHRS]       = {0};
    char urls[MAX_IMGS][URL_CHRS]  = {0};
    sprintf(mkdir_cmd,
            "@if not exist \"..\\%s\\%s\\\" ("
            "mkdir \"..\\%s\\%s\\\""
            "& mkdir \"..\\%s\\%s\\img\")",
            folder, id, folder, id, folder, id
           );
    sprintf(curl_cmd,
            "curl %s -o \"..\\%s\\%s\\index.html\" \"%s\" 2>NUL 1>NUL",
            proxyConf, folder, id, url
           );
    //puts(mkdir_cmd);
    system(mkdir_cmd);
    //puts(curl_cmd);
    system(curl_cmd);
    sprintf(page_file, "..\\%s\\%s\\index.html", folder, id);
    printf("saving guide to %s\\%s\\index.html\n", folder, id);
    fp = fopen(page_file, "w");
    if(fp == NULL)
    {
        perror("writing guide error");
        return;
    }
    sprintf(mkdir_cmd, "<script type='text/javascript' src='../../assets/guide-module.js'></script>");
    writeHtmlHead(fp, title, "guide.css", mkdir_cmd);
    urlCount = getTextWebpage(
                   url, match_start, match_end, 0,
                   search_begin, sizeof(search_begin)/sizeof(search_begin[0]),
                   search_end, sizeof(search_end)/sizeof(search_end[0]),
                   fp, urls
               );
    writeHTMLEnd(fp);
    if(urlCount)
    {
        sprintf(mkdir_cmd, "%s\\%s", folder, id);
        downloadResources(mkdir_cmd, urls, urlCount);
    }
}

void getGuide(char *title, char *id)
{
    char url[URL_CHRS] = {0};
    char *pre = "https://www.pixelmator.com/support/guide/pixelmator-pro/";
    sprintf(url, "%s%s/", pre, id);
    printf("\nParsing Guide: ...\nProxy: %s\nTarget: %s\nTitle: %s\n", proxyConf, url, title);
    prepareTextGuide(url, id, "guide", title);
}


int getTutorial(char *url, char *outfolder, char *cmd, int downall)
{
    char info[FND_GRPS][FUD_CHRS] = {0};
    char find[FND_GRPS][FND_CHRS] =
    {
        "tutorialsVideo__tabsTitle",
        "https://youtu.b",
        "https://upload-cdn.pixelmator.co"
    };
    char rescmd[RES_CMDS]    = {0};
    char ytbcmd[RES_CMDS]    = {0};
    char curlcmd[CMD_CHRS]   = {0};
    FILE *fp, *yp;
    sprintf(rescmd, "..\\%s_res.cmd", cmd);
    sprintf(ytbcmd, "..\\%s_ytb.cmd", cmd);
    fp = fopen(rescmd, "a+");
    if(fp == NULL)
    {
        perror("open resource download error");
        return OPEN_ERR;
    }
    yp = fopen(ytbcmd, "a+");
    if(yp == NULL)
    {
        perror("open youtube download error");
        return OPEN_ERR;
    }

    printf("\nParsing Tutorial...\nProxy: %s\nTarget: %s\nOutput: %s\n", proxyConf, url, outfolder);
    parseTutorialPage(url, find, info);
    printf("Title: %s\nYoutube: %s\nResource: %s\n", info[0], info[1], info[2]);
    // video tutorial
    if(strlen(info[1]))
    {
        char ytd[] = "..\\..\\yt-dlp --write-thumbnail --embed-metadata"
                     " --cache-dir cache --write-link -f \"bv+ba\""
                     " --progress --no-playlist --restrict-filenames --write-subs"
                     " --audio-quality 10 --merge-output-format \"mp4\""
                     " --sub-langs \"en-US.*,zh-Hans.*\" --convert-thumbnails png"
                     " --ffmpeg-location ..\\..\\";
        sprintf(
            curlcmd,
            "@if not exist \"%s\\video.mp4\" "
            "%s %s -o %s\\video.mp4 "
            "\"https://www.youtube.com/watch?v=%s\"\n",
            strchr(outfolder,'\\') + 1,
            ytd, strlen(proxyConf) ? proxyConf : "",
            strchr(outfolder,'\\') + 1, info[1]
        );
        fprintf(
            yp,
            "@if not exist \"%s\\video.mp4\" "
            "%%down%% -o \"%s\\video.mp4\" \"https://www.youtube.com/watch?v=%s\"\n",
            outfolder, outfolder, info[1]
        );
        if(downall)
        {
            printf("downloading https://www.youtube.com/watch?v=%s\n", info[1]);
            system(curlcmd);
        }
        else
        {
            printf("preparing https://www.youtube.com/watch?v=%s\n", info[1]);
        }
    }
    else
    {
        // text based tutorial
        prepareTextTuroial(url, outfolder, info[0]);
    }

    // tutorial has resource file
    if(strlen(info[2]))
    {
        sprintf(
            curlcmd,
            "@if not exist \"%s\\%s\" "
            "curl %s -o \"%s\\%s\" \"%sm/%s\"",
            strchr(outfolder,'\\')+1, info[2],
            strlen(proxyConf) ? proxyConf : "",
            strchr(outfolder,'\\')+1, info[2], find[2], info[2]
        );
        fprintf(
            fp,
            "@echo dowloading %sm/%s\n",
            find[2], info[2]
        );
        fprintf(
            fp,
            "@if not exist \"%s\\%s\" "
            "curl %s -o \"%s\\%s\" \"%sm/%s\"\n",
            outfolder, info[2],
            strlen(proxyConf) ? proxyConf : "",
            outfolder, info[2], find[2], info[2]
        );
        // has more param to download resource at the same time
        if(downall)
        {
            printf("downloading %sm/%s\n", find[2], info[2]);
            system(curlcmd);
        }
        else
        {
            printf("preparing %sm/%s\n", find[2], info[2]);
        }
    }
    fclose(yp);
    fclose(fp);
    return 0;
}

// getpage "https://www.pixelmator.com/tutorials/how-to-create-a-neon-sign-effect/"
// "Design\how-to-create-a-neon-sign-effect" "Resources"
int main(int argc, char* argv[])
{
    char guideid[16]     = {0};
    char proxy[PXY_CHRS] = {0};
    char cmd[PXY_CHRS]   = {0};
    FILE *pp             = NULL;
    if(argc < 3)
    {
        printf("usage: %s <url> <output_folder> <resouce_cmd_file>\n", argv[0]);
        //system("echo %CD%");
        //getGuide("Interface overview","1218");
        //getTutorial("https://www.pixelmator.com/tutorials/how-to-create-a-neon-sign-effect/","web", "test", 0);
        exit(0);
    }
    pp = fopen("..\\assets\\proxy.conf","r");
    if(pp != NULL)
    {
        fscanf(pp, "%127s", proxy);
        sprintf(proxyConf, "--proxy \"%s\"", proxy);
        fclose(pp);
    }
    // download guide page only
    if(strstr(argv[2], "guide\\"))
    {
        strcpy(guideid, strstr(argv[2], "\\") + 1);
        getGuide(argv[3], guideid);
        return 0;
    }
    sprintf(cmd, "%s", argc >= 4 && strlen(argv[3]) ? argv[3]: "Resouces");
    return getTutorial(argv[1], argv[2], cmd, 0);
}
