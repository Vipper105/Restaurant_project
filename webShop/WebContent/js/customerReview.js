var indexImage = 1;
showSlide2(indexImage);

function plusIndex(index) {
    showSlide2(indexImage+=index);
}

function showSlide2(n) {
    var reviewList = document.getElementsByClassName('details-reviews');

    if(n>reviewList.length){
        indexImage=1;
    }

    if(n<1){
        indexImage=reviewList.length;
    }

    for(var i=0;i<reviewList.length;i++){
        reviewList[i].style.display="none";     
    }
    reviewList[indexImage-1].style.display="block";
    reviewList[slideIndex-1].style.transition="1.5s ease";

}

/*=========== Slider automation ======== */
//window.onload =function(){
//    // autoSlider();
//};
//function autoSlider(){
//var imgList=document.querySelectorAll(".contain-reviews .details-reviews")
//var timer;
//for(var i=0;imgList.length;i++){
//    
//    timer=setInterval(function(){
//        // but, ~ setInterval infinite ~~~ => need stop condition
//        if(op<=0.1){
//            clearInterval(timer);
//            // console.log('in');
//        }
//        imgList[i].style.display="none";
//        
//        
//    },250);
//}
//
//
//}

