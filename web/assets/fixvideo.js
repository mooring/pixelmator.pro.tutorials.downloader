window.onload = function(){
    var isguide = location.href.indexOf('/guide/')!=-1
    var videos = document.querySelectorAll('video');
    var links = document.querySelectorAll('a');
    for(var i=0,il=videos.length;i<il;i++){
        var video = videos[i];
        video.setAttribute("controls", true);
    }
    for(var i=0,il=links.length;i<il;i++){
        var lnk = links[i];
        var href = lnk.getAttribute('href');
        if(href){
            if(/\/pixelmator-pro\/\d+/.test(href)){
                var match = href.match(/pixelmator-pro\/(\d+)/i);
                lnk.setAttribute('href', '../'+match[1]+'/index.html');
                lnk.setAttribute('target', '_self');
            }else if(href.indexOf('//') == 0){
                lnk.setAttribute('href', 'https:'+href);
                lnk.setAttribute('target', '_blank');
            }else if(/^\/\w+\//i.test(href)){
                lnk.setAttribute('href', 'https://www.pixelmator.com'+href);
                lnk.setAttribute('target','_blank');
            }
        }
    }
    if(isguide){
        var src = '../../assets/tutorials.map.js'
        var scr = document.createElement('script');
        scr.type = 'text/javascript';
        scr.onload = function(){
            links = document.querySelectorAll('.resourcesBlock__tutorialsItem a');
            for(var i=0,il=links.length; i<il; i++){
                var lnk = links[i];
                var hrf = links[i].getAttribute('href');
                var parts = hrf.split('/tutorials/');
                if(parts.length > 1){
                    var path = parts[1].split('/')[0];
                    if(tutorialMap[path]){
                        var path = '../../'+tutorialMap[path]+'/'+parts[1];
                        lnk.setAttribute('href','javascript:j2t(\''+path+'\')');
                        lnk.removeAttribute('target');
                    }
                }
            }
        };
        document.getElementsByTagName('head')[0].appendChild(scr);
        scr.src = src;
    }
};
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
