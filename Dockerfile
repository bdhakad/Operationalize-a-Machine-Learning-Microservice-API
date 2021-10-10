FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . app.py /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
# RUN pip install --upgrade pip &&\
#     pip install --trusted-host pypi.python.org -r requirements.txt 
    
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt    

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
CMD ["python", "app.py"]
