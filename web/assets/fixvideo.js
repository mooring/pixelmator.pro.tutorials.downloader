window.onload = function(){
    var videos = document.querySelectorAll('video');
    for(var i=0,il=videos.length;i<il;i++){
        var video = videos[i];
        video.setAttribute("controls", true);
    }
};