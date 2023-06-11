FROM anibali/pytorch:1.7.0-cuda11.0 
RUN python --version
RUN pip list
RUN pip3 list
EXPOSE 8501
WORKDIR /model
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
RUN pip install opencv-python-headless
COPY . .
CMD streamlit run main.py
