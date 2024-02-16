from flask import Flask, request, jsonify
from twilio.rest import Client
app = Flask(__name__)
def send_otp(phone_number):
    client = Client(account_sid, auth_token)
    verification = client.verify.v2.services(service_sid).verifications.create(
        to=phone_number, channel='sms'
    )
    return verification.sid
def verify_otp(verification_sid, code):
    client = Client(account_sid, auth_token)
    verification_check = client.verify.v2.services(service_sid).verification_checks.create(
        to=verification_sid, code=code
    )
    return verification_check.status
@app.route('/request_otp', methods=['POST'])
def request_otp():
    phone_number = request.json['phone_number']
    verification_sid = send_otp(phone_number)
    return jsonify({'message': 'OTP sent successfully', 'verification_sid': verification_sid})
@app.route('/verify_otp', methods=['POST'])
def verify_otp():
    verification_sid = request.json['verification_sid']
    code = request.json['code']
    status = verify_otp(verification_sid, code)
    if status == 'approved':
        return jsonify({'message': 'OTP verified successfully'})
    else:
        return jsonify({'message': 'Invalid OTP'}), 401
if __name__ == '__main__':
    app.run(debug=True)
