function bigImg(indexImg) {
    var listImg = document.getElementsByClassName('img-gl');
    for (var i = 0; i < listImg.length; i++) {
        if (listImg[i].id == indexImg) {
            listImg[i].style.transform = "scale(1.05)";
            listImg[i].style.transition = ".5s ease";
            listImg[i].style.boxShadow = "9px 9px 15px #888888";
        } else {
            listImg[i].style.transform = "scale(1)";
            listImg[i].style.transition = ".5s ease";
        }
    }
}

// box-shadow: 32px 17px 22px #888888;
function normalImg(indexImg) {
    var listImg = document.getElementsByClassName('img-gl');
    for (var i = 0; i < listImg.length; i++) {
        if (listImg[i].id == indexImg) {
            listImg[i].style.transform = "scale(1)";
            listImg[i].style.transition = ".2s ease";
            listImg[i].style.boxShadow = "none";
        }
    }

}