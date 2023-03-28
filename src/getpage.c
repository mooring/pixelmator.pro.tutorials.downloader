#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#if defined(_WIN32) || defined(_WIN64)
    #define popen  _popen
    #define pclose _pclose
#endif

#define MAX_LINE 512
#define MAX_IMGS 20

char proxyConf[128] = {0};

int getString(char* src, char* find, char ret[]){
    char* prev = strstr(src, find) + strlen(find) + 2;
    char* dblq = strpbrk(prev, "\"<");
    *dblq=0;
    sprintf(ret, "%s", prev);
    return 0;
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
    char  text[],
    char  urls[][256]
)
{
    char curlcmd[256] = { 0 };
    char rescmd[512] = { 0 };
    char line[2048] = { 0 };
    char tline[2048] = { 0 };
    FILE *fp = NULL;

    char *ps = NULL, *pe = NULL, *next = NULL;
    int i = 0, j = 0, k = 0, len = 0;
    int start = 0, matched = 0, find = 0;
    
    sprintf(
        curlcmd, 
        "curl %s \"%s\" 2>NUL",
        strlen(proxyConf) ? proxyConf : "",
        url
    );
    fp = popen(curlcmd, "r");
    if (fp == NULL) {
        perror("initial request error");
        return 1;
    }
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
                if ((ps=strstr(tline, beg[i]))!=NULL) {
                    next = ps + strlen(beg[i]);
                    for (j = 0; j < elength; j++) {
                        pe = strstr(next, end[j]);
                        if (!find && pe != NULL) {
                            len = pe + strlen(end[j]) - next + 1;
                            strcpy(urls[k],  next);
                            urls[k][len - 1] = 0;
                            find = 1;
                            ps = strstr(tline, urls[k]);
                            len = strrchr(urls[k], '/') - urls[k];
                            strcpy(rescmd, "./img");
                            memcpy(ps, rescmd, strlen(rescmd));
                            memcpy(ps+strlen(rescmd), ps + len, strlen(ps));
                            k++;
                            break;
                        }
                    }
                }
            }
            strcat(text, tline);
            if (strstr(line, med) != NULL) {
                matched = 1;
            }
        }
        //printf("%d.%s", i++, line);
    }
    pclose(fp);
    //printf("Text=%s\n", text);
    return k;
}

void generateHTML(char* fold, char urls[][256], int urlCount, char *title, char text[]) {
    char rescmd[128] = { 0 };
    char curlcmd[1024] = { 0 };
    char fullurl[256] = {0};
    char url[256] = {0};
    FILE* fp = NULL;
    int  i = 0, len;
    for (i = 0; i < urlCount; i++) {
        strcpy(url, urls[i]);
        len = strrchr(url, '/') - url;
        sprintf(
            fullurl,
            "%s%s", 
            strstr(url,"http") != NULL ? "" : "https:",
            url
        );
        memcpy(rescmd, url + len, strlen(url));
        sprintf(
            curlcmd,
            "curl %s -o \"..\\%s\\img%s\" \"%s\" 2>NUL",
            strlen(proxyConf) ? proxyConf : "",
            fold, rescmd, fullurl
        );
        printf("downloading %s\n", fullurl);
        system(curlcmd);
    }
    sprintf(rescmd, "..\\%s\\index.html", fold);
    printf("Saving %s\\index.html\n", fold);
    fp = fopen(rescmd, "w");
    fprintf(fp,"%s\n", "<!doctype html>");
    fprintf(fp, "%s\n", "<html lang = 'en-US'>");
    fprintf(fp, "%s\n", "<head>");
    fprintf(fp, "%s\n", "<meta charset = 'utf-8' />");
    fprintf(fp, "<title>%s</title>\n", "", strlen(title) ? title : "Pixelmator Pro Tutorials");
    fprintf(fp, "%s\n", "<meta name='author' content = 'mooring@codernote.club' />");
    fprintf(fp, "%s\n", "<meta name='description' content = 'Pixelmator Pro Tutorial' />");
    fprintf(fp, "%s\n", "<meta name='viewport' content = 'width=device-width,initial-scale=1' />");
    fprintf(fp, "%s\n", "<link rel='stylesheet' type='text/css' href='../../assets/styles.css' />");
    fprintf(fp, "%s\n", "<script type='text/javascript' src='../../assets/fixvideo.js'></script>");
    fprintf(fp, "%s\n", "</head><body>");
    fprintf(fp, "%s", text);
    fprintf(fp, "%s\n", "</body></html>");
    fclose(fp);
}

void prepareTextTuroial(char *url, char *fold, char *title)
{
    const char* mst = "<section class=";
    const char* med = "</section>";
    const char* beg[] = { "src=\"","srcset=\"", "href=\""};
    const char* end[] = { ".png", ".jpg", ".gif", ".mov", ".mp4"}; //, ".zip"
    char text[512000] = { 0 };
    char urls[MAX_IMGS][256] = { 0 };

    int urlCount = getTextTutorial(
        url, fold, mst, med,
        beg, sizeof(beg)/sizeof(beg[0]), 
        end, sizeof(end)/sizeof(end[0]),
        text, urls
    );
    generateHTML(fold, urls, urlCount, title, text);
}

int parsePage(char *url, char find[][100], char info[3][1024])
{
    char cmd[1024]   = {0};
    char cpcmd[100]  = {0};
    char html[10240] = {0};
    char ctx[10240]  = {0};
    int  i = 0,count = 0;
    char *fstr;
    FILE *fp = NULL;
    
    sprintf(
        cmd, 
        "curl %s \"%s\" 2>NUL",
        strlen(proxyConf) ? proxyConf : "",
        url
    );
    printf("parsing %s\n", url);
    fp = popen(cmd, "r");
    if(fp == NULL){
        perror("init curl error\n");
        return 1;
    }
    while(fgets(html, sizeof(html), fp) != NULL){
        if(count >= 3){break;}
        for(i=0; i<3; i++){
            fstr = find[i];
            memset(ctx, 0, sizeof(ctx));
            memcpy(ctx, html, sizeof(html));
            if(strstr(ctx, fstr)){
                getString(ctx, fstr, info[i]);
                count++;
            }
        }
        memset(html, 0, sizeof(html));
    }
    pclose(fp);
    return 0;
}

// getpage "https://www.pixelmator.com/tutorials/how-to-create-a-neon-sign-effect/" "Design\how-to-create-a-neon-sign-effect" "Resources"
int main(int argc, char* argv[])
{
    char url[200]  = "https://www.pixelmator.com/tutorials/how-to-create-a-neon-sign-effect/";
    char find[3][100] = {
        "tutorialsVideo__tabsTitle", 
        "https://youtu.b",
        "https://upload-cdn.pixelmator.co"
    };
    char out[100]       = {"out"};
    char info[3][1024]  = {0};
    char download[3096] = {0};
    char resource[1024] = {0};
    char rescmd[100]    = {0};
    char ytbcmd[100]    = {0};
    char proxy[150]     = {0};
    int i = 0;
    char *ps = NULL;
    FILE *fp = NULL, *yp = NULL, *pp = NULL;
    strcpy(rescmd, "../youtube.cmd");
    if(argc >= 2 && strstr(argv[1], "pixelmator.com")){
        strcpy(url, argv[1]);
    }
    if(argc >= 3 && strlen(argv[2])){
        strcpy(out, argv[2]);
    }
    if(argc >= 4 && strlen(argv[3])){
        strcpy(rescmd, "..\\");
        strcpy(ytbcmd, "..\\");
        strcat(rescmd, argv[3]);
        strcat(ytbcmd, argv[3]);
        strcat(rescmd, "_res.cmd");
        strcat(ytbcmd, "_ytb.cmd");
    }
    printf("geting Tutorial\nurl=%s\nout=%s\n", url, out);
    // printf("resource download script is %s\n", rescmd);
    // printf("youtube  download script is %s\n", ytbcmd);
    fp = fopen(rescmd, "a+");
    yp = fopen(ytbcmd, "a+");
    pp = fopen("..\\assets\\proxy.conf","r");
    if(fp == NULL){perror("open resource download error");return 0;}
    if(yp == NULL){perror("open youtube download error");return 0;}
    if(pp != NULL){
        fscanf(pp, "%s", proxy);
        sprintf(proxyConf, "--proxy \"%s\"", proxy);
        printf("proxy=%s\n", proxyConf);
        fclose(pp);
    }
    parsePage(url, find, info);
    // tutorial has resource file
    if(strlen(info[2])){
        sprintf(
            resource,
            "curl %s -o \"%s\\%s\" \"%sm/%s\"",
            strlen(proxyConf) ? proxyConf : "",
            strchr(out,'\\')+1, info[2],
            find[2], info[2]
        );
        fprintf(
            fp,
            "curl %s -o \"%s\\%s\" \"%sm/%s\"\n",
            strlen(proxyConf) ? proxyConf : "",
            out, info[2],
            find[2], info[2]
        );
        // has more param to download resource at the same time
        if(argc >= 5){
            printf("downloading %sm/%s\n", find[2], info[2]);
            system(resource);
        }else{
            printf("parsing %sm/%s\n", find[2], info[2]);
        }
    }
    // video tutorial
    if(strlen(info[1])){
        char ytd[] = "..\\..\\yt-dlp --write-thumbnail  --embed-metadata  --cache-dir cache --write-link -f \"bv[ext=mp4]+ba[ext=m4a]\" --progress --no-playlist --restrict-filenames --write-subs --audio-quality 10 --merge-output-format \"mp4/mkv\" --sub-langs \"en-US.*,zh-Hans.*\" --convert-thumbnails png  --ffmpeg-location ..\\..\\";
        fprintf(
            yp,
            "%%down%% "
            "-o %s\\video.mp4 "
            "\"https://www.youtube.com/watch?v=%s\"\n",
            out, info[1]
        );
        fclose(fp);
        fclose(yp);
        sprintf(
            download,
            "%s "
            "-o %s\\video.mp4 "
            "\"https://www.youtube.com/watch?v=%s\"\n",
            ytd, strchr(out,'\\')+1, info[1]
        );
        if(argc >= 5){
            printf("downloading https://www.youtube.com/watch?v=%s\n", info[1]);
            system(download);
        }else{
            printf("parsing https://www.youtube.com/watch?v=%s\n\n", info[1]);
        }
    }else{
        // text based tutorial
        prepareTextTuroial(url, out, info[2]);
    }
    return 0;
}