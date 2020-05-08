FROM tomcat

## Step 1:
# Create a Working Directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . /app/
# Step 3:
RUN apt-get update && apt-get -y upgrade

## Step 4:
# Expose port 80
EXPOSE 80


