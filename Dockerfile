# Step 1: Use an official Python runtime as a parent image (Python 3.9 or higher)
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY . /app

# Step 4: Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose port 5000 to be accessible outside the container
EXPOSE 5000

# Step 6: Define the command to run the application
CMD ["python", "app.py"]