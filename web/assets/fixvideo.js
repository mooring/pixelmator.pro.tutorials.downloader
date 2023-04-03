var isguide = location.href.indexOf('/guide/')!=-1
var videos = document.querySelectorAll('video');
for(var i=0,il=videos.length;i<il;i++){
    var video = videos[i];
    video.setAttribute("controls", true);
}
var links = document.querySelectorAll('.resourcesBlock__tutorialsItem [target="_blank"]');
for(var i=0,il=links.length; i<il; i++){
    var lnk = links[i];
    if(lnk.tagName.toLowerCase() != 'a'){
        var attrs = lnk.attributes;
        var href = lnk.outerHTML.split('target="_blank"')[0].replace(/[: \"=]+/g,'/');
        if(href.indexOf('/tutorials/') != -1){
            var tu = href.split(/\/tutorials\/(?:[^\/]+\/)/)[1].split('/')[0]
            if(tu){
                var a = document.createElement('a');
                a.target = "_blank";
                a.setAttribute('href', '/tutorials/'+ tu+'/');
                a.innerHTML = lnk.innerHTML;
                lnk.parentElement.appendChild(a);
                lnk.parentElement.removeChild(lnk);
            }
        }
    }
}

var src = '../../assets/tutorials.map.js'
var scr = document.createElement('script');
scr.type = 'text/javascript';
scr.onload = function(){
    links = document.querySelectorAll('.resourcesBlock__tutorialsItem a');
    for(var i=0,il=links.length; i<il; i++){
        var lnk = links[i];
        var hrf = links[i].getAttribute('href');
        var parts = hrf.split(/\/tutorials\/(?:video\/)/);
        if(parts.length > 1){
            var path = parts[1].split('/')[0];
            if(tutorialMap[path]){
                var path = '../../'+tutorialMap[path]+'/'+parts[1];
                lnk.setAttribute('href','javascript:j2t(\''+path+'\')');
                lnk.removeAttribute('target');
            }
        }
    }
    links = document.querySelectorAll('a[href]');
    var reg = [
        /\/pixelmator-pro\/\d+($|\/)/,
        /pixelmator-pro\/[^\/]+\/#\d+$/i
    ]
    for(var i=0,il=links.length;i<il;i++){
        var lnk = links[i];
        var href = lnk.getAttribute('href');
        if(href){
            ///support/guide/pixelmator-pro/639
            var processed = false;
            
            // https://help.pixelmator.com/pixelmator-pro/2.4/#805
            if(reg[0].test(href) || reg[1].test(href)){
                var match = href.match(/pixelmator-pro\/(\d+)/i);
                var hash  = href.match(/#(\d+)$/)
                processed = true;
                lnk.setAttribute('src', href);
                lnk.setAttribute('href', '../../guide/'+(hash[1]||match[1])+'/index.html');
                lnk.setAttribute('target', '_self');
            }else if(/\/tutorials\/(?:[^\/]+\/)/.test(href)){
                var tu = href.split(/\/tutorials\/(?:[^\/]*\/)/)[1].split('/')[0];
                var tv = href.split(/\/tutorials\//)[1].split('/')[0];
                var path = tu || tv;
                if(path && tutorialMap[path]){
                    lnk.setAttribute('href', "javascript:j2t('../../" + tutorialMap[path] +'/'+path+"/');")
                    lnk.removeAttribute('target');
                    processed = true;
                }
            }
            if(!processed && href.indexOf('//') == 0){
                lnk.setAttribute('href', 'https:'+href);
                lnk.setAttribute('target', '_blank');
            }else if(!processed && /^\/\w+\//i.test(href)){
                lnk.setAttribute('href', 'https://www.pixelmator.com'+href);
                lnk.setAttribute('target','_blank');
            }
        }
    }
    
};
document.getElementsByTagName('head')[0].appendChild(scr);
scr.src = src;

function j2t(src){
    var img = new Image();
    img.onload = function(){
        window.open(src+'video.mp4', '_blank');
    }
    img.onerror = function(){
        window.open(src+'index.html', '_blank');
    }
    img.src = src + 'video.png';
}
document.documentElement.className += 'nojs pixelmator-pro';
document.documentElement.className += (("ontouchstart" in document.documentElement) ? '' : ' hover');
document.documentElement.className += ((window.devicePixelRatio >= 2) ? ' retina' : '');
