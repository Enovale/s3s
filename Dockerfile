FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

VOLUME [ "/data" ]

ENTRYPOINT [ "/usr/src/app/docker-entrypoint.sh" ]
CMD [ "--help" ]