// ==UserScript==
// @name         pixelmatorTutorialDownloader
// @namespace    http://tampermonkey.net/
// @version      0.02
// @description  download pixcelmator pro tutorial resouces and youtube videos to local disk
// @author       mooring@codernote.club
// @match        https://www.pixelmator.com/tutorials/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=pixelmator.com
// @run-at       document-end
// @grant        GM_registerMenuCommand
// @license      MIT
// ==/UserScript==

let proxy = '';

function getCategoryInfo(cmd, collect, init){
    let category = document.querySelector('.tutorialsBrowser__categoriesList >.tutorialsBrowser__categoriesItem.is-active').innerText;
    let moreless = document.querySelector('.tutorialsBrowser__mainCategoryMore>.tutorialsBrowser__mainCategoryMoreBtn');
    let commands = [];
    let download = [];
    let html     = [];
    let foldmap  = {};
    if(!moreless.parentElement.classList.contains('is-inactive')){
        moreless.click();
    }
    if(init){
        commands.push('cls');
        commands.push('@set pwd=%25~dp0');
        commands.push('@set getpage=%25~dp0\\..\\getpage.exe');
        commands.push(`@echo @set down=..\\yt-dlp --write-thumbnail  --embed-metadata  --cache-dir cache --write-link -f "bv[ext=mp4]+ba[ext=m4a]" --progress ${proxy?'--proxy "'+proxy+'"':''} --no-playlist --restrict-filenames --write-subs --audio-quality 10 --merge-output-format "mp4/mkv" --sub-langs "en-US.*,zh-Hans.*" --convert-thumbnails png  --ffmpeg-location ..\\ ${init?'>':'>>'} %25~dp0\\${collect||category}_ytb.cmd`);
        html.push(`<!doctype html>`);
        html.push(`<html lang="en-US">`)
        html.push(`<head>`)
        html.push(`<meta charset="utf-8"/>`)
        html.push(`<title>Pixelmator Pro Tutorial</title>`)
        html.push(`<meta name="author" content="mooring@codernote.club"/>`)
        html.push(`<meta name="description" content="Pixelmator Pro Tutorial"/>`)
        html.push(`<meta name="viewport" content="width=device-width, initial-scale=1"/>`)
        html.push(`<style>`);
        html.push(`h2.category {width: 80%;display: block;border-bottom: 1px dodgerblue dotted;margin: 0.5em auto;padding-bottom: 0.5em;}`);
        html.push(`.items {width: 80%;margin: 0 auto;display: flex;flex-wrap: wrap;justify-content:flex-start}`);
        html.push(`.item {width:23.7em;padding:10px}`);
        html.push(`.img {width: 100%;height: 13em;cursor:pointer;position:relative;}`);
        html.push(`.img:before{display:block;width:3em;height:3em;content:"▶️";border-radius:2em;position:absolute;left:8.6em;top:3.8em;font-size:20px;color:white;text-align:center;line-height:3em;padding:0;margin:0;}`);
        html.push(`.title {font-weight:600;cursor:pointer;text-align: center;font-size: 1.2em;padding-bottom: 1em;}`);
        html.push(`img.image-x2 {width: 100%;height: 100%;border-radius: 1em;}`);
        html.push(`</style>`);
        html.push(`<script>`);
        html.push(`function viewVideo(evt,url){ var img=new Image(); img.onerror=function(){evt.nextElementSibling.click()};img.onload=function(){window.open(url)};img.src=url.replace(".mp4",".png");}`);
        html.push(`</script></head><body>`);
        commands.push(`@echo @echo tutorial resource downloader ${init?'>':'>>'} %25~dp0\\${collect||category}_res.cmd`);
    }
    commands.push(`@if not exist ${category} mkdir ${category}`);
    commands.push(`@cd ${category}`);
    commands.push(`@echo. ${init?'>':'>>'} ..\\pages.md`);
    commands.push(`@echo Just text tutorial Pages of ${category} >> ..\\pages.md`);
    commands.push(`@echo -------------------------------------------------- >> ..\\pages.md`);
    commands.push(`@echo. >> ..\\pages.md`);
    let items = document.querySelectorAll('.tutorialsBrowser__mainCategoryList >.tutorialsBrowser__mainItem');
    items.forEach((item,index)=>{
        let img = item.querySelector('.tutorialsThumbnail__image');
        let lnk = item.querySelector('.tutorialsThumbnail__link').href;
        let tit = item.querySelector('.tutorialsThumbnail__title').innerText;
        let src = 'https:'+img.getAttribute('src').replace(/^https?:/i,'');
        let x2 = 'https:'+img.getAttribute('srcset').replace(/^https?:/i,'');
        let pth = lnk.split('/').slice(-2,-1)[0];
        src = src.split('/');
        x2 = x2.split('/');
        if(!foldmap[pth]){
            foldmap[pth] = 1;
            commands.push(`@if not exist "${pth}\\img" mkdir "${pth}\\img"`);
        }
        if(index == 0){
            html.push(`<h2 class="category">${category}</h2><div class="items">`);
        }
        html.push(`<div class="item">`);
        html.push(`<div class="img" onclick="viewVideo(this,'./${category}/${pth}/video.mp4')">`);
        html.push(`<img src="./${category}/${pth}/img/${x2.slice(-1)[0].split(' ')[0]}" class="image-x2" />`);
        html.push(`</div>`);
        html.push(`<div class="title" onclick="window.open('${lnk}','_blank')">${tit}</div>`);
        html.push(`</div>`);
        commands.push(`@echo downloading ${encodeURI(src.join('/'))}`);
        commands.push(`@curl -o "${pth}\\img\\${src.slice(-1)[0]}" "${encodeURI(src.join('/')).replace(/%/g,'%%')}" 2>NUL`);
        commands.push(`@echo downloading ${encodeURI(x2.join('/').split(' ')[0])}`);
        commands.push(`@curl -o "${pth}\\img\\${x2.slice(-1)[0].split(' ')[0]}"  "${encodeURI(x2.join('/').split(' ')[0]).replace(/%/g,'%%')}" 2>NUL`);
        commands.push(`@%25getpage%25 "${lnk}" "${category}\\${pth}" "${collect||category}"`);
    });
    if(items.length>0){
        html.push(`</div>`);
    }
    commands.push('@cd %25pwd%25');
    if(collect){
        return {category, commands, html}
    }else{
        let content = cmd == 'cmd' ? commands.join("\n") : html.join("\n");
        down(cmd, category, content)
    }
}
function down(cmd, category, content){
    let ele = document.createElement('a');
    ele.style.display = 'none';
    ele.setAttribute('href', 'data:text/plain;charset=utf-8,' + content);
    ele.setAttribute('download', category + '.' + cmd);
    document.body.appendChild(ele);
    ele.click();
    document.body.removeChild(ele);
}
function collect(cmd){
    let html     = [];
    let commands = [];
    let cmdfile  = 'Resources';
    let categories = document.querySelectorAll('.tutorialsBrowser__categoriesItem> .tutorialsBrowser__categoriesLink');
    let lproxy = localStorage.getItem('archiveAssistant_proxy');
    if(cmd=='cmd'){
        proxy = prompt("Input proxy string like http://127.0.0.1:8899, if no proxy keep it empty", lproxy || '');
        localStorage.setItem('archiveAssistant_proxy', proxy||'');
    }
    for(let i=0,il=categories.length;i<il;i++){
        categories[i].click();
        let source = getCategoryInfo(1, cmdfile, i==0);
        if(source.html.length>0){
            html = html.concat(source.html);
        }
        commands = commands.concat(source.commands);
    }
    html.push('</body></html>')
    down(cmd, cmdfile,(cmd=='cmd'?commands:html).join("\n"));
}

(function() {
    'use strict';
    GM_registerMenuCommand("get All Cmd", function(evt, keybord){
        collect('cmd');
    });
    GM_registerMenuCommand("get All HTML", function(evt, keybord){
        collect('html');
    });
    GM_registerMenuCommand("get Command", function(evt, keybord){
        proxy = prompt("Input proxy string like http://127.0.0.1:8899, if no proxy keep it empty", lproxy || '');
        localStorage.setItem('archiveAssistant_proxy', proxy||'');
        getCategoryInfo('cmd', false, true);
    });
    GM_registerMenuCommand("get HTML", function(evt, keybord){
        getCategoryInfo('html', false, true);
    });
})();