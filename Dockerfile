# Start from python3 base
FROM python:3

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files to the container to the working directory on the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# tell the port number the container should expose
EXPOSE 80

# run the command
CMD ["python", "./app.py"]
