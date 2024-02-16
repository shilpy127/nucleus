from flask import Flask, request, jsonify
app = Flask(__name__)
shared_content = []
abusive_words = ["hate", "abuse", "violence", "racism", "discrimination"]
@app.route('/share_content', methods=['POST'])
def share_content():
    content = request.json.get('content')
    if contains_abusive_words(content):
        return jsonify({'message': 'Content contains abusive or hateful words. It cannot be shared.'}), 400
    shared_content.append(content)
    return jsonify({'message': 'Content shared successfully'}), 200
def contains_abusive_words(content):
    for word in abusive_words:
        if word in content.lower():
            return True
    return False
@app.route('/get_content', methods=['GET'])
def get_content():
    return jsonify({'content': shared_content})
if __name__ == '__main__':
    app.run(debug=True)
