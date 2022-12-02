set -e
if [ $# != 1 ]; then
	echo "Usage: set-plugin-build-env.sh tabby_path"
	exit 1
fi
if [ -z "$YOSYSHQ_LICENSE" ]
then
	echo "ERROR: No YOSYSHQ_LICENSE environment variable found!"
	exit 1
fi
docker run --rm -it -v $(pwd):/work -v $1:/tabby -v "$YOSYSHQ_LICENSE":/tabby.lic -e YOSYSHQ_LICENSE=/tabby.lic yosyshq/plugin_build:20.04
