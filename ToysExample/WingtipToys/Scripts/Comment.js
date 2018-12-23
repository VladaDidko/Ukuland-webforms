
var count = 0;
var comments = {};

function createReplyBox(replyCount, replyButton, dynamicCommentBox) {
    parent = replyButton.parentNode
    if (replyCount == 0) {
        var dynamicReplyBox = document.createElement('textarea');
        dynamicReplyBox.style.display = "block";
        dynamicReplyBox.setAttribute('class', 'replybox');
        parent.insertBefore(dynamicReplyBox, replyButton);
    }
    if (replyCount != 0) {
        var sib = replyButton.previousSibling;
        var replyText = replyButton.previousSibling.value;
        var dynamicReply = document.createElement('div');
        dynamicReply.style.display = "block";
        dynamicReply.innerHTML = replyText;
        parent.insertBefore(dynamicReply, sib);
        sib.value = '';

    }
}

function createCommentBox(commentBoxText, count) {
    var dynamicCommentBox = document.createElement('div');
    dynamicCommentBox.style.display = "block";
    dynamicCommentBox.innerHTML = commentBoxText;
    dynamicCommentBox.setAttribute('id', count);
    document.body.appendChild(dynamicCommentBox);
    var replyButton = document.createElement('button');
    replyButton.innerHTML = 'Reply';
    dynamicCommentBox.appendChild(replyButton);
    var replyCount = 0;
    replyButton.setAttribute('id', 'rb');
    replyButton.addEventListener('click', function (e) { var repB = e.target; createReplyBox(replyCount, repB, dynamicCommentBox); replyCount++; });
}
function getValue() {
    var commentBoxText = document.getElementById('textarea').value;
    comments.comment = commentBoxText;
    count++;
    comments.id = count;
    document.getElementById('textarea').value = '';
    createCommentBox(commentBoxText, count);
}