<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Queries</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        #editor, #codeSnippet {
            width: 100%;
            min-height: 200px;
            border: 1px solid ;
            padding: 10px;
            box-sizing: border-box;
            margin-top: 10px;
        }
        iframe {
            width: 100%;
            height: 300px;
            border: 0;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h1>Theory</h1>
    <div id="editor" contenteditable="true" oninput="updatePreview()"></div>
    <div id="preview"></div>
    <script>
        function updatePreview() {
            var editorContent = getEditorContent();
            displayPreview(editorContent);
        }
        function getEditorContent() {
            return document.getElementById('editor').innerHTML;
        }
        function displayPreview(content) {
            document.getElementById('preview').innerHTML = content;
        }
    </script>
    <h2>Code</h2>
    <div id="codeSnippet" contenteditable="true" oninput="displayCodeSnippet()"></div>
    <script>
        function displayCode() {
            var codeSnippetContent = getEditorContent('code');
            displayPreview(codeContent);
        }
    </script>
    <h2>Video</h2>
    <input type="text" id="videoUrl" placeholder="Enter video URL">
    <button onclick="Video()">Video</button>
    <div id="videoPreview"></div>
    <script>
        function Video() {
            var videoUrl = document.getElementById('videoUrl').value;
            var videoPreview = document.getElementById('videoPreview');
            if (isValidYouTubeUrl(videoUrl)) {
                var videoId = getYouTubeVideoId(videoUrl);
                var iframeCode = `<iframe width="100%" height="300" src="https://www.youtube.com/embed/${videoId}" frameborder="0" allowfullscreen></iframe>`;
                videoPreview.innerHTML = iframeCode;
            } else {
                videoPreview.innerHTML = "Invalid video URL";
            }
        }
        function isValidYouTubeUrl(url) {
            return url && url.startsWith("https://www.youtube.com/");
        }
        function getYouTubeVideoId(url) {
            return url.split('v=')[1];
        }
    </script>
</body>
</html>
