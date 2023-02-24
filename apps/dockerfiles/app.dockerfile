
FROM python:3.9
ARG PEX_FILE
COPY $PEX_FILE /app.pex
RUN PEX_TOOLS=1 /app.pex venv --non-hermetic-scripts --bin-path prepend /app/venv
ENTRYPOINT ./app.pex --metrics_exporter console --traces_exporter console uvicorn asciinator.app:app --host 0.0.0.0
