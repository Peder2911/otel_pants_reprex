
python_sources(
   name = "lib",
   sources = [
      "./asciinator/**/*.py"
   ],
)

python_tests(
   name = "tests",
   sources = [
      "./tests/**/test_*.py"
   ],
   dependencies = [
      ":lib"
   ]
)

pex_binary(
   name = "bin",
   script = "opentelemetry-instrument",# --metrics_exporter console --traces_exporter console ./asciinator/app.py",
   dependencies = [
      ":lib",
      "3rdparty/python:reqs#opentelemetry-distro",
      "3rdparty/python:reqs#opentelemetry-instrumentation-fastapi",
   ],
   execution_mode = "venv",
   include_tools = True,
)
