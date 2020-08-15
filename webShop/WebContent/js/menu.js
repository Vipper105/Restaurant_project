// function show_hide(){
//     if(click.style.display="none"){
//         click.style.display="block";
//     }else{
//         click.style.display="none";
//     }
// }


// function show_hide() {
//     var click = document.querySelector(".drop-content");

//         if (click.style.display == "none") {
//             click.style.display = "block";
//         } else {
//             click.style.display = "none";
//         }
//    
// }

function show_hide(div_id) {

    var divs = document.getElementsByClassName('drop-content');


    for (var i = 0; i < divs.length; i++) {
        if (divs[i].id == div_id) {
            if(divs[i].style.display == 'block'){
                divs[i].style.display = 'none';
            }else {
                divs[i].style.display ='block';
            }
        }else{
            divs[i].style.display = 'none';
        }

       
    }

}

