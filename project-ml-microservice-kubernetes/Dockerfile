# FROM python:3.7.3-stretch

# ## Step 1:
# # Create a working directory
# WORKDIR /app

# ## Step 2:
# # Copy source code to working directory
# COPY . app.py /app/
# COPY . requirements.txt /app/

# ## Step 3:
# # Install packages from requirements.txt
# # hadolint ignore=DL3013
# RUN pip install --upgrade pip &&\
#     pip install --trusted-host pypi.python.org -r requirements.txt

# ## Step 4:
# Expose port 8080

# ## Step 5:
# # Run app.py at container launch
# CMD ["python", "app.py"]



FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
# COPY . app.py /app/
# COPY . requirements.txt /app/
# COPY . output_txt_files /app/output_txt_files
COPY app.py /app/
COPY requirements.txt /app/
COPY model_data /app/model_data
COPY output_txt_files /app/output_txt_files

# Set the log file path
ENV LOG_FILE_PATH /app/output_txt_files/docker_out.txt

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80
EXPOSE 5001

# Run app.py at container launch
CMD ["python", "app.py"]