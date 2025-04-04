#use officel python file
FROM python:3.12-slim


# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1


# Set work directory
WORKDIR /crmbackend

# Install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy project files into the container
COPY . .

# Make entrypoint executable
RUN sed -i 's/\r//' entrypoint.sh && chmod +x entrypoint.sh

# Expose port
EXPOSE 8000

# Run the entrypoint
ENTRYPOINT ["./entrypoint.sh"]
