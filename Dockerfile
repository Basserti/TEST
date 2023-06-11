FROM anibali/pytorch:1.7.0-cuda11.0
RUN nvidia-smi
RUN python -c 'import torch;print(torch.cuda.is_available())'
EXPOSE 8501
WORKDIR /model
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
RUN pip install opencv-python-headless
COPY . .
CMD streamlit run main.py
