FROM       python:3.4

RUN        pip install nose
RUN        mkdir /envtpl-dev
WORKDIR    /envtpl-dev
RUN        git clone https://github.com/andreasjansson/envtpl.git
WORKDIR    /envtpl-dev/envtpl
RUN        python setup.py develop
RUN        pip install -r tests/requirements.txt

ENTRYPOINT ["envtpl"]
