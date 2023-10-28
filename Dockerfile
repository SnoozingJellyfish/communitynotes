# フォーク元のオリジナルリポジトリに記載されているpython 3.7.9では、指定されたパッケージライブラリがインストールできないため3.9.4に変更
FROM python:3.9.4  
WORKDIR /app
RUN pip install -U pip \
    && pip --default-timeout=3000 --no-cache-dir install ptvsd numpy==1.24.3 torch==1.12.0 pandas==1.1.5 matplotlib==3.5.2

CMD ["bash"]