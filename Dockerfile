FROM python:3.7
EXPOSE 8501
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD streamlit run main.py
#CMD streamlit run --server.port 8080 --server.enableCORS false app.py
