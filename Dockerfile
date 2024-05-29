FROM python:3

WORKDIR .

COPY ./webapp .

COPY ./requirements.txt .

RUN pip install -r requirements.txt

RUN pip install virtualenv 
RUN pip install virtualenvwrapper

RUN python3 -m venv myenv

RUN . myenv/bin/activate

EXPOSE 5000

ENV FLASK_APP=run.py

CMD ["flask", "run", "--host", "0.0.0.0"]