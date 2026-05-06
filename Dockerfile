FROM islasgeci/base:22.04

RUN pip install --upgrade pip && pip install \
    black \
    flake8 \
    jinja-render \
    mypy \
    pylint \
    pytest \
    typer
