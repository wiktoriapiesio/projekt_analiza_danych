# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.10-slim

WORKDIR /app

COPY app.py .
COPY requirements.txt .
COPY model.pkl .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
