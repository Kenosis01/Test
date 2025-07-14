FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir jupyterlab

EXPOSE 8080

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
