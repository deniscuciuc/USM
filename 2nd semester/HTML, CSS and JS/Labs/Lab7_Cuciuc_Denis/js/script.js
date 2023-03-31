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

function removeBorderFromTable() {
      var nodes = document.getElementById('images-container').childNodes;
      for (var i = 0; i < nodes.length; i++) {
            if (nodes[i].nodeName.toLowerCase() == 'div') {
                  nodes[i].style.border = '0px solid black';
            }
      }
}

function addBorderToTable() {
      var nodes = document.getElementById('images-container').childNodes;
      for (var i = 0; i < nodes.length; i++) {
            if (nodes[i].nodeName.toLowerCase() == 'div') {
                  nodes[i].style.border = '1px solid black';
            }
      }
}


// TASK 4 - if pressed letter A then change styles


const myParagraph = document.getElementById('text');
const originalStyles = {
      fontSize: myParagraph.style.fontSize,
      backgroundColor: myParagraph.style.backgroundColor,
      border: myParagraph.style.border,
};


document.addEventListener('keydown', (event) => {
      if (event.code === 'KeyA') {
            myParagraph.style.fontSize = '24px';
            myParagraph.style.backgroundColor = 'yellow';
            myParagraph.style.border = '2px solid black';
      }
});


document.addEventListener('keyup', (event) => {
      if (event.code === 'KeyA') {
            myParagraph.style.fontSize = originalStyles.fontSize;
            myParagraph.style.backgroundColor = originalStyles.backgroundColor;
            myParagraph.style.border = originalStyles.border;
      }
});


// Task 5

function displayResult() {
      const birthDate = new Date(document.getElementById('birthDate').value);
      const now = new Date();
      const ageInMilliseconds = now - birthDate;
      const ageInYears = ageInMilliseconds / (365 * 24 * 60 * 60 * 1000);

      const wantAnswerNow = confirm('Хочешь ответ сейчас?');
      if (wantAnswerNow) {
            alert(`Твой возраст ${Math.floor(ageInYears)} в годах.`);
      } else {
            const currentDateString = now.toDateString();
            alert(`Текущая дата ${currentDateString}.`);
      }
}
