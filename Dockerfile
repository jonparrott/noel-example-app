# This base image is just Debian Jessie w/ GCE package mirrors
# and Python pre-installed.
# Source: https://github.com/GoogleCloudPlatform/python-docker
FROM gcr.io/google_appengine/python

# Use python3.4
RUN virtualenv /env -p python3.4

# Set virtualenv environment variables. This is equivalent to running
# source /env/bin/activate
ENV VIRTUAL_ENV /env
ENV PATH /env/bin:$PATH

# Install dependencies
ADD requirements.txt /app/
RUN pip install -r requirements.txt

# Copy app code.
ADD . /app/

# Run gunicorn
CMD gunicorn -b :8080 main:app
