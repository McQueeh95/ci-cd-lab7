FROM python:3.10-slims

WORKDIR lab7project

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]