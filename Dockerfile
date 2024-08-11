FROM pytorch/pytorch

COPY . /app
WORKDIR /app

USER root

CMD python mnist.py --batch-size 32 --test-batch-size 32 --epochs 14