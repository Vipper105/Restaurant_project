
// click 1 div hiện lên thì các div còn lại ẩn
// function changeTab(index_menu){
//     var pills=document.getElementsByClassName("pills");

//     for(var i=0;i<pills.length;i++){

//         if(pills[i].id==index_menu){

//             if(pills[i].style.display=="block"){
//                 // pills[i].style.display="none";
//             }else{
//                 pills[i].style.display="block";
//             }

//         }else{
//             pills[i].style.display="none";
//         }
//     }
// }

// ==================   Tab,hover, color  ======================
function changeTab(index_menu, index_tab, index_a) {
    var pills = document.getElementsByClassName("pills");
    var tabs = document.querySelectorAll("#v-pills-tab ul li");
    var lista = document.querySelectorAll("#v-pills-tab ul li a");

    for (var i = 0; i < pills.length; i++) {

        if (pills[i].id == index_menu) {

            if (pills[i].style.display == "block") {
                // pills[i].style.display="none";
            } else {
                pills[i].style.display = "block";
            }

        } else {

            pills[i].style.display = "none";
        }
    }

    for (var j = 0; j < tabs.length; j++) {
        if (tabs[j].id == index_tab) {
            if (tabs[j].className == "tabColor") {
                // tabs[j].classList.remove("tabColor");
            } else {
                tabs[j].className = "tabColor";
            }
        } else {
            tabs[j].classList.remove("tabColor");
        }
    }

    for (var k = 0; k < lista.length; k++) {
        if (lista[k].id == index_a) {
            if (lista[k].className = "aColor") {

            } else {
                lista[k].className = "aColor";
            }
        } else {
            lista[k].classList.remove("aColor");
            // lista[k].className.replace("aColor", "");
        }
    }

}

// ===================   Overplay   ==================
function showOverplay(overplayID) {
    var op = document.getElementsByClassName("overplay");
    for (var i = 0; i < op.length; i++) {
        if (op[i].id == overplayID) {
            op[i].style.height = '100%';
        } else {
            op[i].style.height = '0%';
        }
    }
}

function hideOverplay(overplayID) {
    var op = document.getElementsByClassName("overplay");
    for (var i = 0; i < op.length; i++) {
        if (op[i].id == overplayID) {
            op[i].style.height = '0%';
        }
    }
}

