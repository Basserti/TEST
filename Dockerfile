FROM python:3.10
EXPOSE 8501
WORKDIR /model
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
RUN pip install opencv-python-headless
COPY . .
CMD streamlit run main.py
