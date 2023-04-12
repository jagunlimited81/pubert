FROM python:3.11-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip install --trusted-host pypi.python.org -r requirements.txt
COPY src/ /app/src
ENV PYTHONPATH="/app/src:${PYTHONPATH}"
ENTRYPOINT ["python", "-m", "src.main.py"]