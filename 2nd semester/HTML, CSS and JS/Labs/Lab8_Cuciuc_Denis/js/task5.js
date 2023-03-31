const myElement = document.getElementById('imageToBeAnimated');
let currentAnimation = 'spin';

function switchAnimation() {
      if (currentAnimation === 'spin') {
            myElement.style.animationName = 'pulse';
            currentAnimation = 'pulse';
      } else {
            myElement.style.animationName = 'spin';
            currentAnimation = 'spin';
      }
}