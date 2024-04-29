FROM google/cloud-sdk:latest

# Set working directory
#WORKDIR /app
RUN apt-get update && apt-get install -y socat
# Install any additional dependencies
# For example:
# RUN apt-get update && apt-get install -y ...

# Copy your script file
COPY file1.sh  /start.sh

# Set permissions
RUN chmod +x ./start.sh ./*.sh

EXPOSE 8080
# Set the iry point script
ENTRYPOINT ["./start.sh"]
# Expose port 8080