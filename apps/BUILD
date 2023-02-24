
docker_image(
   name = "asciinator",
   source = "dockerfiles/app.dockerfile",
   extra_build_args = [
      "PEX_FILE=apps.src.asciinator/bin.pex",
   ],
   dependencies = [
      "apps/src/asciinator:bin"
   ],
)
