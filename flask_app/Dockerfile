#Base Image

FROM python:3.11

#Working Directory

WORKDIR /app

#Copy code

COPY . .

#Required Libraries

RUN pip install -r requirements.txt

# Run the image

CMD ["python", "app.py"]
