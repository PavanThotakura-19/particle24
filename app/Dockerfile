# Use an official lightweight Python image
FROM python:3.11-slim

# Create a non-root user and group
RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser

# Set working directory
WORKDIR /app

# Copy requirements (if you decide to use a requirements.txt in the future)
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY SimpleTimeService.py .

# Change ownership to non-root user
RUN chown -R appuser:appgroup /app

# Switch to non-root user
USER appuser

# Expose the port Flask runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "SimpleTimeService.py"]