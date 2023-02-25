// Task 1 - Greetings

let greetings = "Добро пожаловать!";
alert(greetings);

// Task 2 - Button and prompt

let studentName;
function getNameFromUser() {
      studentName = prompt("Введите свое имя: ");

      if (studentName != null && studentName != "") {
            document.getElementById("greetingsWithName").innerHTML = "Добро пожаловать " + studentName;
      } else {
            getNameFromUser();
      }
}

// Task 3 - images in table

let imageDiv = document.querySelector

function changeBgImage(obj) {
      let currentBackgroundImage;
      switch (obj.id) {
            case "image1":
                  currentBackgroundImage = "url('./images/image1.png')";
                  break;
            case "image2":
                  currentBackgroundImage = "url('./images/image2.png')";
                  break;
            case "image3":
                  currentBackgroundImage = "url('./images/image3.png')";
                  break;
            case "image4":
                  currentBackgroundImage = "url('./images/image4.png')";
                  break;
            case "image5":
                  currentBackgroundImage = "url('./images/image5.png')";
                  break;
            case "image6":
                  currentBackgroundImage = "url('./images/image6.png')";
                  break;
            case "image7":
                  currentBackgroundImage = "url('./images/image7.png')";
                  break;
            case "image8":
                  currentBackgroundImage = "url('./images/image8.png')";
                  break;
            case "image9":
                  currentBackgroundImage = "url('./images/image9.jpg')";
                  break;
            default:
                  currentBackgroundImage = "none";
                  break;
      }

      if (currentBackgroundImage != null && currentBackgroundImage != "") {
            document.getElementById("images-container").style.backgroundImage = currentBackgroundImage;
      }
}

function restoreBgImage() {
      let imagesContainer = document.getElementById('images-container');
      imagesContainer.style.backgroundImage = 'none';
}