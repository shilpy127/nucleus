<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ask Questions</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>Queries</h1>
  </header>
  <main>
    <form id="question-form">
      <label for="title">Theory:</label>
      <input type="text" id="title" name="title" required>
      <div class="code-and-video-options">
        <div class="code-upload">
          <label for="code-file">Code:</label>
          <input type="file" id="code-file" accept=".txt,.js,.py,.cpp,.java,.cs,.c">
        </div>
        <div class="video-embed">
          <label for="video-url">Video:</label>
          <input type="url" id="video-url" placeholder="Paste video embed code">
        </div>
      </div>
      <button type="submit">Done</button>
    </form>
  </main>
  <script src="script.js"></script>
</body>
</html>
