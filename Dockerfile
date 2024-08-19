FROM islasgeci/base:1.0.0

RUN pip install --upgrade pip && pip install \
    black \
    flake8 \
    mypy \
    pylint \
    pytest \
    typer
