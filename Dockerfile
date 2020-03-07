FROM python:3.8
RUN apt update \
    && apt install firefox-esr -y \
    && pip install selenium
COPY geckodriver /usr/local/bin