# Use an official Python runtime as a parent image
FROM python:3.11-slim-bullseye
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set the working directory in the container
WORKDIR /app
# Copy the requirements file into the container at /app
COPY requirements.txt /app/
COPY gunicorn-cfg.py /app/
# COPY deployments ./app/deployments/
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
# Install any needed packages specified in requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt
RUN pip install -r requirements.txt
# RUN pip install django-filter
# Copy the current directory contents into the container at /app
COPY . /app/
EXPOSE 8585

###################################################################

# # Use Python 3.9 as the base image
# FROM python:3.9

# # Set the working directory within the container
# WORKDIR /app/backend

# # Copy the requirements.txt file to the container
# COPY requirements.txt /app/backend

# # Install Python dependencies using pip
# RUN pip install -r requirements.txt

# # Copy the entire application code to the container
# COPY . /app/backend

# # Expose port 8000 to the outside world
# EXPOSE 8000

# # Apply migrations to set up the database (SQLite in this case)
# RUN python manage.py migrate

# # Run the Django application
# CMD python /app/backend/manage.py runserver 0.0.0.0:8000