from flask import Flask, request, jsonify
app = Flask(__name__)
subscriptions = {}
@app.route('/subscribe', methods=['POST'])
def subscribe():
    plan = request.form.get('plan')
    if plan not in ['Free', 'Silver', 'Gold']:
        return jsonify({'message': 'Invalid plan'}), 400
    payment_successful = process_payment(plan)
    if payment_successful:
        user_id = 1  # You would typically get the user ID from the session or JWT token
        subscriptions[user_id] = plan
        return jsonify({'message': f'Subscribed to {plan} plan successfully'}), 200
    else:
        return jsonify({'message': 'Payment failed. Please try again later.'}), 500
def process_payment(plan):
    # Dummy payment processing logic
    # Replace this with actual payment gateway integration
    return True
if __name__ == '__main__':
    app.run(debug=True)
