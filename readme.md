# SuperCollider linux standalone How-to

## Instructions

##Linux:
0. Compile SuperCollider from master.
1. clone this repository.
1. copy sclang and scsynth/supernova to this folder.
2. copy the plugins to the 'plugins' folder.
3. copy 'SCClassLibrary' to this folder.
4. Add any quarks or class files to the 'classes' folder and add their paths to 'sclang.yaml'.
5. edit start.scd.

##OSX:
0. See file structure in https://github.com/dathinaios/sc_osx_standalone
0. There are issues with the Qt libraries link paths.
0. Add any quarks or class files to the 'classes' folder and add their paths to 'sclang.yaml'.
0. edit start.scd.

You can run the standalone from the ide by doing File->Open project and selecting the sclang.yaml file.

