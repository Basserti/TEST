FROM python:3.10
EXPOSE 8501
WORKDIR /model
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
ENTRYPOINT ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]
