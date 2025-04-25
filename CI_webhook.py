import logging
from flask import Flask, request
import subprocess
import os
import time

os.unlink('CI.log')
logging.basicConfig(filename='CI.log', level=logging.INFO, format='%(asctime)s %(message)s')

app = Flask(__name__)

@app.route('/deploy-r11944004', methods=['POST'])
def deploy():
    logging.info('Received a POST request.')
    print(request.json)
    if request.method == 'POST':
        data = request.json
        if 'action' in data and data['action'] == 'published':
            print("Deploying")
            logging.info('Deployment started.')
            ret = subprocess.run(["bash", "deploy_csie.sh", "--reset"])
            if ret.returncode == 0:
                logging.info('Deployment successful.')
                return 'Deployed', 200
            else:
                logging.error('Deployment failed.')
                return 'Failed', 500

    logging.info('Request ignored.')
    return 'Ignored', 200

# show hello world on /webhook-test/
@app.route('/webhook-test/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)