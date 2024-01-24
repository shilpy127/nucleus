<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Public Space - Share</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        h1, h2 {
            text-align: center;
            color: #333;
        }
        #content {
            max-width: 800px;
            margin: 20px auto;
            background-color:#fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        textarea, input, button {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }
        button {
            background-color:rgb(139, 93, 0);
            color:black;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color:darkmagenta;
        }
    </style>
</head>
<body>
    <div id="content">
        <h1>Public Space - Share</h1>
        <textarea id="postInput" placeholder="Share your thoughts, images, videos, etc."></textarea>
        <button onclick="addPost()">Share</button>
        <p style="text-align: center;"><a href="explore.html">Explore</a></p>
    </div>
    <script>
        function addPost() {
            var postInput = document.getElementById('postInput');
            var content = postInput.value;
            if (containsAbusiveWords(content)) {
                alert("Content contains abusive or hateful words. Please refrain from using such language.");
                return;
            }
            savePost(content);
            postInput.value = '';
        }
        function containsAbusiveWords(content) {
            var abusiveWords = ['hate', 'abuse', 'violence'];
            return abusiveWords.some(word => content.toLowerCase().includes(word));
        }
        function savePost(content) {
            var posts = JSON.parse(localStorage.getItem('posts')) || [];
            posts.push(content);
            localStorage.setItem('posts', JSON.stringify(posts));
        }
    </script>
</body>
</html>
