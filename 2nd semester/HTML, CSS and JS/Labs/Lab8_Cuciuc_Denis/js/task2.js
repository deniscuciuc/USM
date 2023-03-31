function copyAndModifyList() {
      const olElement = document.querySelector('ol');
      const divElement = document.createElement('div');
      divElement.innerHTML = olElement.innerHTML;
      divElement.style.listStyleType = 'lower-alpha';
      olElement.parentNode.replaceChild(divElement, olElement);
}