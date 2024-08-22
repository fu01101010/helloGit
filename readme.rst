###########
Hello, Git!
###########

Says :code:`"Hello, Git!"` via UNIX-like terminal using cmake, enjoy!

It's my first repo here!
========================

The time has come to finally start using GitHub to store my projects.

1: project layout
=================

- :code:`root`: The :code:`CMakeLists.txt`, :code:`.command` and :code:`.sh` files are located directly in the root folder. The :code:`.sh` file was made for fun.

  - :code:`/bin`: contains the :code: `helloGit` executable file.

  - :code:`/build`: contains the :code: `cmake` generated build files.

  - :code:`/source`: contains the :code: `helloGit.cpp` source file.

you can change the :code:`cd **/helloGit.command(:h)` to :code:`cd /path/helloGit` where :code:`/path/helloGit` is the full path to the project directory, right now it is searching for it consuming some time although making it immune to path changes.

2: cmake
========

i didnt want to write :code:`g++ -o ./helloGit ./helloGit.cpp`, easier to push a button or to just write :code:`./helloGit.command` much time saved.

.. code-block::

	cmake_minimum_required(VERSION 3.28)
	project("Hello, Git!")

	add_executable(helloGit 
    		"source/helloGit.cpp"
    	)

	target_link_libraries(helloGit ${ALL_LIBS})
	install(TARGETS helloGit DESTINATION "${PROJECT_SOURCE_DIR}/bin/")

3: build
========

- :code:`~/projectRoot rm -rf build/` and :code:`~/projectRoot mkdir build` basically clears the build directory.

- :code:`cd build`: enters the directory.

- :code:`cmake ..`: builds the :code:`CMakeLists.txt` located in the parent directory.

- :code:`make install`: creates the :code:`helloGit` executable and puts it in the :code:`~/projectRoot/bin` directory.

- :code:`cd ../bin`: enters the /bin directory.

- :code:`./helloGit`: launches the executable.

now it should say something to Git =:)