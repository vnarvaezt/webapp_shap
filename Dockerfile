FROM python:3.12-slim
# install curl
RUN apt-get update && apt-get install -y curl
RUN pip install --upgrade pip
RUN mkdir /app
COPY requirements.txt /app/
COPY app/ /app/
WORKDIR /app
RUN ls
RUN pip install -r requirements.txt
RUN pip list
RUN ls -l /app
# The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime. Your container needs to listen to Streamlit’s (default) port 8501
EXPOSE 8501
HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health
ENTRYPOINT ["streamlit", "run", "streamlit_app.py", "--server.port=8501", "--server.address=0.0.0.0"]