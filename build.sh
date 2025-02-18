#!/usr/bin/bash

# NOTE: change this when you've set the values below
directoryAndNameHaveBeenSet=true

# NOTE: make sure to set these
buildDir="build"
programExec="cMakeTemplate"

if ! $directoryAndNameHaveBeenSet; then
	echo $'\nPlease set the name of the program and build directory inside build script file.\n'
	exit 1
fi

if [ ! -d $buildDir ]; then
	mkdir $buildDir
	cd $buildDir || exit 1
	cmake ..
else
	cd $buildDir || exit 1
fi

cmake --build .

if ! cmake --build .; then
	echo "Build error."
	exit 1
fi

if [ $# -gt 0 ] && [ "$1" = "run" ]; then
	echo "Build complete. Attempting to run $programExec"
	echo "--- $programExec ---"

	if [ ! -f $programExec ]; then
		echo "$programExec was not found in the build directory."
		exit 1
	fi

	# make the program run from the root folder
	cd ..

	./$buildDir/$programExec

else
	echo "Build complete. For autorun pass 'run' arg to script."
fi
