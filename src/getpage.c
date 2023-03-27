#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#if defined(_WIN32) || defined(_WIN64)
    #define popen  _popen
    #define pclose _pclose
#endif

int getString(char* src, char* find, char ret[]){
    char* prev = strstr(src, find) + strlen(find) + 2;
    char* dblq = strpbrk(prev, "\"<");
    *dblq=0;
    sprintf(ret, "%s", prev);
    return 0;
}
void replaceBlank(char str[], int len){
    int i = 0;
    for(; i<len; i++){
        if(str[i] == ' '){
            str[i] = '_';
        }
    }
}

int getContent(char *url, char find[][100], char info[3][1024]){
    FILE *fp = NULL, *f = NULL;
    char cmd[1024]   = {0};
    char cpcmd[100]  = {0};
    char html[10240] = {0};
    char ctx[10240]  = {0};
    int  i = 0,count = 0;
    char *fstr;
    
    sprintf(cmd, "curl \"%s\" 2>NUL", url);
    printf("parsing %s\n", url);
    fp = popen(cmd, "r");
    if(fp == NULL){
        perror("init curl error\n");
        return 1;
    }
    f = fopen("../pages.md", "a+");
    if(f == NULL){
        perror("open pages error\n");
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
    if(strlen(info[1]) == 0){
        fprintf(f, "- [%s](%s)\n", url, url);
    }
    fclose(f);
    pclose(fp);
    return 0;
}

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
    int i = 0;
    char *ps = NULL;
    FILE *fp = NULL, *yp = NULL;
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
    printf("geting page\nurl=%s\nout=%s\n", url, out);
    printf("resource download script is %s\n", rescmd);
    printf("youtube  download script is %s\n", ytbcmd);
    fp = fopen(rescmd, "a+");
    yp = fopen(ytbcmd, "a+");
    
    if( fp == NULL ){
        perror("open resource download error");
        return 0;
    }
    if( yp == NULL ){
        perror("open youtube download error");
        return 0;
    }
    getContent(url, find, info);
    //printf("info[0]=%s\ninfo[1]=%s\ninfo[2]=%s\n", info[0], info[1], info[2]);
    if(strlen(info[2])){
        sprintf(
            resource,
            "curl -o \"%s\\%s\" \"%sm/%s\"",
            strchr(out,'\\')+1, info[2],
            find[2], info[2]
        );
        fprintf(
            fp,
            "curl -o \"%s\\%s\" \"%sm/%s\"\n",
            out, info[2],
            find[2], info[2]
        );
        
        if(argc >= 5){
            printf("downloading %sm/%s\n", find[2], info[2]);
            system(resource);
        }else{
            printf("parsing %sm/%s\n", find[2], info[2]);
        }
    }
    if(strlen(info[1])){
        char ytd[] = "..\\..\\yt-dlp --write-thumbnail  --embed-metadata  --cache-dir cache --write-link -f \"bv[ext=mp4]+ba[ext=m4a]\" --progress  --proxy \"http://127.0.0.1:15236\" --no-playlist --restrict-filenames --write-subs --audio-quality 10 --merge-output-format \"mp4/mkv\" --sub-langs \"en-US.*,zh-Hans.*\" --convert-thumbnails png  --ffmpeg-location ..\\..\\";
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
    }
    return 0;
}