const messageTextarea = document.querySelector("#message-textarea");

messageTextarea.addEventListener("input", function() {
  const originalText = messageTextarea.value;
  const censoredText = replaceBadWords(originalText);
  messageTextarea.value = censoredText;
});

function replaceBadWords(text) {
    const badWords = /(плохо|урод|маркетолог)/gi;
    return text.replace(badWords, "***");
}