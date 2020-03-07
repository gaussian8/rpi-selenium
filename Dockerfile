FROM python:3.8
ENV WORKDIR /selenium
RUN apt update \
    && apt install firefox-esr -y \
    && pip install selenium \
    && mkdir $WORKDIR
COPY geckodriver $WORKDIR
ENV PATH $PATH:$WORKDIR
WORKDIR $WORKDIR