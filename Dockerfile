FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY reconciler.py .

USER 1000:1000

ENTRYPOINT ["python", "-u", "/app/reconciler.py"]
