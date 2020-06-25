FROM python:3
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN mkdir trpg_bot
WORKDIR trpg_bot

RUN apt -y update
RUN apt -y install git vim
COPY requirements.txt /trpg_bot/
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install -r requirements.txt
COPY . /trpg_bot/

RUN git clone https://github.com/hojyo/discord-bot.git