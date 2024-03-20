ARG PYTHON_VERSION=3.12
FROM python:${PYTHON_VERSION}-slim-bullseye

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY . .

RUN pip install poetry
RUN poetry config virtualenvs.create false && poetry install


EXPOSE 8000

# Run the application.
CMD ["tail", "-f", "/dev/null"]
