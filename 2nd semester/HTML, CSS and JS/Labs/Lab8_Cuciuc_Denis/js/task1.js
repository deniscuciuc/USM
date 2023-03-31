function copyParagraphToHeader() {
      const myParagraph = document.getElementById('paragprahToCopyFrom');
      const myHeader = document.getElementById('headerToCopyTo');
      myHeader.textContent = myParagraph.textContent;
}