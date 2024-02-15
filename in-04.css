<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chatbot with OTP Authentication</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        {
            max-width: 400px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        input, button {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            margin-bottom: 10px;
        
        }
        button {
            background-color:darkmagenta;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color:darkmagenta;
        }
        {
            margin-top: 10px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div id="chatbot">
        <h1>Chatbot with OTP Authentication</h1>
        <input type="text" id="username" placeholder="Enter your username">
        <button onclick="generateOTP()">Generate OTP</button>
        <input type="text" id="otp" placeholder="Enter OTP">
        <button onclick="authenticate()">Authenticate</button>
        <div id="response"></div>
    </div>
    <script>
        async function generateOTP() {
            const username = document.getElementById('username').value;
            const response = await fetch('http://localhost:3000/generateOTP', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ username }),
            });
            const data = await response.json();
            if (data.success) {
                alert('OTP generated successfully. Check console for the OTP.');
            } else {
                alert('Failed to generate OTP. Please try again.');
            }
        }
        async function authenticate() {
            const username = document.getElementById('username').value;
            const otp = document.getElementById('otp').value;
            const response = await fetch('http://localhost:3000/authenticate', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ username, otp }),
            });
            const data = await response.json();
            if (data.success) {
                document.getElementById('response').innerText = 'Authentication successful. Ask your programming questions!';
            } else {
                document.getElementById('response').innerText = `Authentication failed. ${data.message}`;
            }
        }
    </script>
</body>
</html>
