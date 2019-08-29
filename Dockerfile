# 
# FROM python:3-alpine
# 
# https://hub.docker.com/_/python
# 
# Docker configuration for application that run with Python
#
FROM python:3-alpine

# Default ENVIRONMENT VARS to make build
ARG DIR_APP=example-app
ARG PYTHON_ENV=production
ARG PORT_APP=1998

# Create src directory
RUN mkdir -p /home/python/src
# Set workdir
WORKDIR /home/python/src

# Install src dependencies
COPY src/$DIR_APP/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app source
COPY src/$DIR_APP .

# Replace this with your application's default port
EXPOSE $PORT_APP

# Run aplication [dev, prod]
CMD [ "python", "./example-app.py" ]
