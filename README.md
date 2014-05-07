capstone-vala
=============

This package contains the Vala bindings for the capstone
disassembler / code analysis library.

Dependencies:
-------------
capstone (> 1.0)

	git clone https://github.com/aquynh/capstone.git
	cd capstone
	git co next
	make -j 8
	make install PREFIX=/usr

How to build
------------

The plugins will be installed in the plugin's directory
of the available radare2.

	make
	sudo make install

How to use
----------

	vala/test-x86
