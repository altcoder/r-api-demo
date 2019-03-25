# Reference: https://www.rplumber.io/docs/hosting.html#docker
# step21-lm-docker-train.R

# NO CODE HERE. Please refer to main.R, predict.R and train.R for actual code referenced in the comments below

# Follow the instructions from the plumber website for the docker part
# On Mac:
# 1. docker-machine start vbox
# 2. eval $(docker-machine env vbox)
# 3. docker pull trestletech/plumber  
# ... last command might take a while to download a few hundred MBs
# ... you can play around with the docker image or create the Dockerfile
# 4. [Optional] docker run -it --rm --entrypoint /bin/bash trestletech/plumber

# Custom docker image is available with Dockerfile
# 1. Customize Dockerfile
# 2. docker build -t jafaeldon/r-api-demo .
# 3. docker tag jafaeldon/r-api-demo:latest 276018443719.dkr.ecr.ap-southeast-1.amazonaws.com/r-api-demo:latest
# 4. $(aws ecr get-login --no-include-email --region ap-southeast-1)
# 5. docker push 276018443719.dkr.ecr.ap-southeast-1.amazonaws.com/r-api-demo:latest

# On the server either you create a SageMaker endpoint or manually install in a server
# 1. sudo docker run -d --rm --network host -P 276018443719.dkr.ecr.ap-southeast-1.amazonaws.com/r-api-demo serve

# From sagemaker you can setup a API Gateway and Lambda to expose outside SageMaker
# Reference: https://aws.amazon.com/blogs/machine-learning/call-an-amazon-sagemaker-model-endpoint-using-amazon-api-gateway-and-aws-lambda/
