set -e
if [ $# != 1 ]; then
	echo "Usage: set-plugin-build-env-x64.sh tabby_path"
	exit 1
fi
if [ -z "$YOSYSHQ_LICENSE" ]
then
	docker run --rm -it -v $(pwd):/work -v $1:/tabby yosyshq/plugin_build_x64:22.04
else
	docker run --rm -it -v $(pwd):/work -v $1:/tabby -v "$YOSYSHQ_LICENSE":/tabby.lic -e YOSYSHQ_LICENSE=/tabby.lic yosyshq/plugin_build_x64:22.04
fi
