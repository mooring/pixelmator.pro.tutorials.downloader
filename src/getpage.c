#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#if defined(_WIN32) || defined(_WIN64)
    #define popen  _popen
    #define pclose _pclose
#endif

#define MAX_LINE 512
#define MAX_IMGS 50

char proxyConf[128] = {0};

int getString(char* src, char* find, char ret[]){
    char* prev = strstr(src, find) + strlen(find) + 2;
    char* dblq = strpbrk(prev, "\"<");
    *dblq=0;
    sprintf(ret, "%s", prev);
    return 0;
}
void extractUrls(
    const char* beg[],
    const int   blength,
    const char* end[],
    const int   elength,
    int   *start,
    char  urls[][256],
    char  tline[]
)
{
    char line[2048]  = { 0 };
    int  i = 0, j = 0, k = *start, len = 0, find = 0;
    char *next = NULL, *ps = NULL, *pe = NULL;
    strcpy(line, tline); 
    for (i = 0; i < blength; i++) {
        find = 0;
        ps = strstr(tline, beg[i]);
        if (ps) {
            puts(tline);
            next = ps + strlen(beg[i]);
            //printf("beg[%d]=>>%s<<\nps=%s\nnex=>%s\n", i, beg[i],ps, next);
            for (j = 0; j < elength; j++) {
                pe = strstr(next, end[j]);
                if (!find && pe) {
                    len = pe + strlen(end[j]) - next;
                    strcpy(urls[k],  next);
                    urls[k][len] = 0;
                    printf("resouces[%d]=%s\n", k, urls[k]);
                    ps = strstr(tline, urls[k]);
                    len = strrchr(urls[k], '/') - urls[k];
                    memcpy(ps, "./img", 5);
                    memcpy(ps+5, ps+len, strlen(ps+len));
                    *(ps+5+strlen(ps+len)) = 0;
                    k++;
                    find = 1;
                }
            }
            *start += k;
        }
    }
    puts(tline);
}

int getTextTutorial(
    const char* url,
    const char* fold,
    const char* mst,
    const char* med,
    const char* beg[],
    const int   blength,
    const char* end[],
    const int   elength,
    FILE  *hp,
    char  urls[][256]
)
{
    char curlcmd[256] = { 0 };
    char line[2048] = { 0 };
    char tline[2048] = { 0 };
    FILE *fp = NULL;
    char *ps = NULL, *pe = NULL, *next = NULL;
    int i = 0, j = 0, k = 0, len = 0;
    int start = 0, matched = 0, find = 0;
    
    sprintf(
        curlcmd, 
        "curl %s \"%s\" 2>NUL",
        strlen(proxyConf) ? proxyConf : "", url
    );
    fp = popen(curlcmd, "r");
    if (fp == NULL) {perror("initial request error");return 1;}
    while (fgets(line, sizeof(line), fp) != NULL) {
        if (start && matched) {
            break;
        }
        if (strstr(line, mst) != NULL) {
            start = 1;
        }
        if (start && !matched) {
            strcpy(tline, line);
            for (i = 0; i < blength; i++) {
                find = 0;
                ps = strstr(tline, beg[i]);
                if (ps) {
                    next = ps + strlen(beg[i]);
                    for (j = 0; j < elength; j++) {
                        pe = strstr(next, end[j]);
                        if (!find && pe) {
                            len = pe + strlen(end[j]) - next + 1;
                            strcpy(urls[k],  next);
                            urls[k][len - 1] = 0;
                            //printf("resouces[%d]=%s\n", k, urls[k]);
                            find = 1;
                            ps = strstr(tline, urls[k]);
                            len = strrchr(urls[k], '/') - urls[k];
                            memcpy(ps, "./img", 5);
                            memcpy(ps+5, ps+len, strlen(ps+len));
                            *(ps+5+strlen(ps+len)) = 0;
                            k++;
                            break;
                        }
                    }
                }
            }
            fprintf(hp, "%s", tline);
            if (strstr(tline, med) != NULL) {
                matched = 1;
            }
        }
    }
    pclose(fp);
    // return 0;
    //printf("Text=%s\n", text);
    return k;
}
void writeHtmlHead(FILE *fp, char *title){
    fprintf(fp,"%s\n", "<!doctype html>");
    fprintf(fp, "%s\n", "<html lang = 'en-US'>");
    fprintf(fp, "%s\n", "<head>");
    fprintf(fp, "%s\n", "<meta charset = 'utf-8' />");
    fprintf(fp, "<title>%s</title>\n", strlen(title) ? title : "Pixelmator Pro Tutorials");
    fprintf(fp, "%s\n", "<meta name='author' content = 'mooring@codernote.club' />");
    fprintf(fp, "%s\n", "<meta name='description' content = 'Pixelmator Pro Tutorial' />");
    fprintf(fp, "%s\n", "<meta name='viewport' content = 'width=device-width,initial-scale=1' />");
    fprintf(fp, "%s\n", "<link rel='stylesheet' type='text/css' href='../../assets/styles.css' />");
    fprintf(fp, "%s\n", "<script type='text/javascript' src='../../assets/jquery.min.js'></script>");
    fprintf(fp, "%s\n", "<script type='text/javascript' src='../../assets/fixvideo.js'></script>");
    fprintf(fp, "%s\n", "</head><body>");
}
void writeHTMLEnd(FILE *fp){
    fprintf(fp, "%s\n", "</body></html>");
    fclose(fp);
}

void downloadResources(char* fold, char urls[][256], int urlCount) {
    char rescmd[256] = { 0 };
    char curlcmd[1024] = { 0 };
    char fullurl[256] = {0};
    char url[256] = {0};
    int  i = 0, j = 0, len;
    for (i = 0; i < urlCount; i++) {
        strcpy(url, urls[i]);
        len = strrchr(url, '/') - url;
        sprintf(
            fullurl,
            "%s%s", 
            strstr(url, "://") != NULL ? "" : "https:",
            url
        );
        memcpy(rescmd, url + len + 1, strlen(url));
        if(strlen(fullurl)==0){
            //printf("url=%s\nstrstr(url)=%s\nrescmd=%s\nfull=%s\n", url, strstr(url,"://"), rescmd, fullurl);
        }
        sprintf(
            curlcmd,
            "curl %s -o \"..\\%s\\img\\%s\" \"%s\" 2>NUL",
            strlen(proxyConf) ? proxyConf : "",
            fold, rescmd, fullurl
        );
        printf("downloading %s\n", fullurl);
        system(curlcmd);
    }
}

void prepareTextTuroial(char *url, char *fold, char *title)
{
    const char* mst   = "<section class=";
    const char* med   = "</section>";
    const char* beg[] = { "src=\"", "srcset=\"", "x, "};
    const char* end[] = { 
        ".png", ".jpg", ".gif", ".mov", ".mp4", ".zip",
        ".png ", ".jpg ", ".gif "
    };
    FILE *fp          = NULL;
    int  urlCount     = 0;
    char rescmd[128]  = { 0 };
    char urls[MAX_IMGS][256] = { 0 };
    
    sprintf(rescmd, "..\\%s\\index.html", fold);
    printf("saving %s\\index.html\n", fold);
    fp = fopen(rescmd, "w");
    if(fp == NULL){perror("write index.html");return;}
    writeHtmlHead(fp, title);
    urlCount = getTextTutorial(
        url, fold, mst, med,
        beg, sizeof(beg)/sizeof(beg[0]), 
        end, sizeof(end)/sizeof(end[0]),
        fp, urls
    );
    writeHTMLEnd(fp);
    if(urlCount){
        downloadResources(fold, urls, urlCount);
    }
}
// parse the pixelmator.com tutorial page
int parseTutorialPage(char *url, char find[][100], char info[3][512])
{
    char cmd[1024]   = {0};
    char line[10240] = {0};
    char ctx[10240]  = {0};
    int  i = 0,count = 0;
    char *fstr;
    FILE *fp = NULL;
    char *titlefix = "t-hero-title";
    sprintf(
        cmd, 
        "curl %s \"%s\" 2>NUL",
        strlen(proxyConf) ? proxyConf : "",
        url
    );
    fp = popen(cmd, "r");
    if(fp == NULL){
        perror("init curl error\n");
        return 1;
    }
    while(fgets(line, sizeof(line), fp) != NULL){
        if(count >= 3){break;}
        for(i=0; i<3; i++){
            fstr = find[i];
            memset(ctx, 0, sizeof(ctx));
            memcpy(ctx, line, sizeof(line));
            if(strstr(ctx, fstr)){
                getString(ctx, fstr, info[i]);
                count++;
            }
            // fix title can't be got on text based tutorial page
            if(i==0 && strlen(info[0])==0 && strstr(ctx, titlefix)){
                getString(ctx, titlefix, info[i]);
                count++;
            }
        }
        memset(line, 0, sizeof(line));
    }
    pclose(fp);
    return 0;
}

// getpage "https://www.pixelmator.com/tutorials/how-to-create-a-neon-sign-effect/" "Design\how-to-create-a-neon-sign-effect" "Resources"
int main(int argc, char* argv[])
{
    char find[3][100] = {
        "tutorialsVideo__tabsTitle", 
        "https://youtu.b",
        "https://upload-cdn.pixelmator.co"
    };
    char info[3][512]   = {0};
    char url[256]       = {0};
    char proxy[128]     = {0};
    char rescmd[128]    = {0};
    char ytbcmd[128]    = {0};
    char youtube[1024] = {0};
    char resource[1024] = {0};
    char output[128]    = {"web"};
    int i = 0;
    char *ps = NULL;
    FILE *fp = NULL, *yp = NULL, *pp = NULL;
    if(argc < 3){
        printf("usage: %s <url> <output_folder> <category>\n", argv[0]);
        exit(0);
    }
    strcpy(rescmd, "../youtube.cmd");
    strcpy(url, argv[1]);
    strcpy(output, argv[2]);
    if(argc >= 4 && strlen(argv[3])){
        sprintf(rescmd, "..\\%s_res.cmd", argv[3]);
        sprintf(ytbcmd, "..\\%s_ytb.cmd", argv[3]);
    }
    printf("\nParsing Tutorial...\nTarget: %s\nOutput: %s\n", url, output);
    fp = fopen(rescmd, "a+");
    if(fp == NULL){perror("open resource download error");return 0;}
    yp = fopen(ytbcmd, "a+");
    if(yp == NULL){perror("open youtube download error");return 0;}
    pp = fopen("..\\assets\\proxy.conf","r");
    if(pp != NULL){
        fscanf(pp, "%s", proxy);
        sprintf(proxyConf, "--proxy \"%s\"", proxy);
        printf("Proxy: %s\n", proxyConf);
        fclose(pp);
    }
    parseTutorialPage(url, find, info);
    printf("Title: %s\nYoutube: %s\nResource: %s\n", info[0], info[1], info[2]);
    
    // video tutorial
    if(strlen(info[1])){
        char ytd[] = "..\\..\\yt-dlp --write-thumbnail --embed-metadata"
            " --cache-dir cache --write-link -f \"bv[ext=mp4]+ba[ext=m4a]\"" 
            " --progress --no-playlist --restrict-filenames --write-subs"
            " --audio-quality 10 --merge-output-format \"mp4/mkv\""
            " --sub-langs \"en-US.*,zh-Hans.*\" --convert-thumbnails png"
            " --ffmpeg-location ..\\..\\";
        sprintf(
            youtube,
            "%s %s -o %s\\video.mp4 "
            "\"https://www.youtube.com/watch?v=%s\"\n",
            ytd, strlen(proxyConf) ? proxyConf : "",
            strchr(output,'\\')+1, info[1]
        );
        fprintf(
            yp,
            "%%down%% -o %s\\video.mp4 \"https://www.youtube.com/watch?v=%s\"\n",
            output, info[1]
        );
        if(argc >= 5){
            printf("downloading https://www.youtube.com/watch?v=%s\n", info[1]);
            system(youtube);
        }else{
            printf("preparing https://www.youtube.com/watch?v=%s\n", info[1]);
        }
    }else{
        // text based tutorial
        prepareTextTuroial(url, output, info[0]);
    }
    fclose(yp);
    // tutorial has resource file
    if(strlen(info[2])){
        sprintf(
            resource,
            "curl %s -o \"%s\\%s\" \"%sm/%s\"",
            strlen(proxyConf) ? proxyConf : "",
            strchr(output,'\\')+1, info[2], find[2], info[2]
        );
        fprintf(
            fp,
            "curl %s -o \"%s\\%s\" \"%sm/%s\"\n",
            strlen(proxyConf) ? proxyConf : "",
            output, info[2], find[2], info[2]
        );
        // has more param to download resource at the same time
        if(argc >= 5){
            printf("downloading %sm/%s\n", find[2], info[2]);
            system(resource);
        }else{
            printf("preparing %sm/%s\n", find[2], info[2]);
        }
    }
    fclose(fp);
    return 0;
}
