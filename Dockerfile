FROM python

WORKDIR /app
ENV FLASK_APP=app.py

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]