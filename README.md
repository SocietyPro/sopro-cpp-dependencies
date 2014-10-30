sopro-cpp-dependencies
======================

Lots of lots of library sources and precompiled libraries that SoPro needs


Windows Install instructions
===

* Install the latest version of OpenSSL  
 Download the version recomended for developers from here:  
 http://slproweb.com/products/Win32OpenSSL.html  
 For example [Win32 OpenSSL v1.0.1j] - [16Mb]  
 
 Install it to the following path:  
 (or install it to any directory on your drive and copy that folder)
	
	sopro-cpp-dependencies\OpenSSL-Win32
	
	add "lib" prefix to the file ssleay32.a  
	sopro-cpp-dependencies\OpenSSL-Win32\lib\MinGW\ssleay32.a (original name)  
	sopro-cpp-dependencies\OpenSSL-Win32\lib\MinGW\libssleay32.a (renamed)  

* Build the libraries in Release mode  
   In the command line execute:
     * cd protobuf-2.5.0-win32\vsprojects
	 * extract_includes.bat
	 * cd ..\..
     * cd Open-Transactions
	 * project\makeproto.bat
	 
   Compile xmlrpc in release mode  
     * xmlrpc-c-1.25.30\qt-project\xmlrpc.pro
	 
   Compile Open-Transactions in release mode  
     * Open-Transactions\project-qt\open-transactions.pro


* Copy the generated files to the distribution folder:  
    * xmlrpc-c-1.25.30\bin\Win32\Release\*.a
    * xmlrpc-c-1.25.30\bin\Win32\Release\*.dll
	* Open-Transactions\bin\Win32\Release\*.a
	* Open-Transactions\bin\Win32\Release\*.dll
	
	

	
Modifications made to the libraries
===

This is the list of changes that have been made to the libraries in order to make them compile on Windows using the MinGW32 Compiler used by QT Creator

<b>Modifications</b>

* [modified] protobuf-2.5.0-win32\vsprojects\extract_includes.bat for:11 
changed to:
````
	copy ..\src\google\protobuf\stubs\atomicops_internals_*.h include\google\protobuf\stubs\
````		

* [new] Open-Transactions\project-qt\libprotobuf\config.h  
File created for the MinGW32 compiler, based on the contents of  
protobuf-2.5.0-win32\vsprojects\config.h   
which works for the VisualStudio compiler  

	
	
