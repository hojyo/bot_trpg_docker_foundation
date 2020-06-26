FROM python:3.8
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /trpg_bot

RUN apt -y update
RUN apt -y install git vim apt-transport-https
COPY requirements.txt /trpg_bot/
COPY bot-token.txt /trpg_bot/
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install -r requirements.txt

# RUN git clone https://github.com/hojyo/discord-bot.git
# RUN cd trpg_bot
# CMD ["python", "main.py"]