// (function() {
//     console.log("working begining 1");
//     var rugbyImage = document.getElementsByClassName("images");
//     var button = document.getElementsByClassName("dot"); //
//     var currentpic = 0;
//     var max = rugbyImage.length;
//     var timer;
//     var isTransitioning;
//
//     function moveRugbyImage(dotPositionIndex) {
//         console.log("working");
//         // check if passed argument is a number. if not,business as usual. If it is a number, stop the cur++ thing and add onscreen class to kitties[passedNumber].
//         isTransitioning = true;
//         rugbyImage[currentpic].classList.remove("onscreen");
//         rugbyImage[currentpic].classList.add("exit");
//         button[currentpic].classList.remove("blue");
//
//         if (isNaN(dotPositionIndex)) {
//             currentpic++;
//             if (currentpic == max) {
//                 currentpic = 0;
//             }
//         } else {
//             currentpic = dotPositionIndex;
//         }
//         button[currentpic].classList.add("blue");
//         rugbyImage[currentpic].classList.add("onscreen");
//     }
//
//     // click handler to figure out which dot was  clicked
//     document.getElementById("dotmenu").addEventListener("click", function(e) {
//         if (e.target.classList.contains("dot")) {
//             var dotPositionIndex = e.target.id.replace("dot", "") - 1;
//             console.log(dotPositionIndex);
//             if (!isTransitioning) {
//                 clearTimeout(timer);
//                 moveRugbyImage(dotPositionIndex);
//             }
//         }
//     });
// });
var slideIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("images");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > x.length) {
        slideIndex = 1;
    }
    x[slideIndex - 1].style.display = "block";
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
