FROM python:3.7.3-stretch

RUN apt-get update -y \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

## Step 1:
# Create a working directory
COPY . /app
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY app.py app.py

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
ENTRYPOINT ["python app.py"]
