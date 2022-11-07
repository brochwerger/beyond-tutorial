FROM python:3.8-slim

# Expose port used by our app server
EXPOSE 8000

# Install dependencies into container
COPY requirements.txt . 
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Install application into container
COPY . . 

# Run database migrations
RUN python manage.py migrate

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
