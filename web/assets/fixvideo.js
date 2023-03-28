window.onload = function(){
    var videos = document.querySelectorAll('video');
    var links = document.querySelectorAll('a');
    for(var i=0,il=videos.length;i<il;i++){
        var video = videos[i];
        video.setAttribute("controls", true);
    }
    for(var i=0,il=links.length;i<il;i++){
        var lnk = links[i];
        var href = lnk.getAttribute('href');
        if(href && href.indexOf('//') == 0){
            lnk.setAttribute('href', 'https:'+href);
            lnk.setAttribute('target', '_blank');
        }
    }
};