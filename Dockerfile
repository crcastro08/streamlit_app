FROM python:3.7

#COPY requirements.txt ./requirements.txt
#RUN pip3 install -r requirements.txt
# Install production dependencies.
RUN pip install pandas
RUN pip install streamlit

# Copy local code to the container image.
WORKDIR /app
COPY . .

EXPOSE 8080
#COPY . /app
CMD streamlit run --server.port 8080 --server.enableCORS false app.py
