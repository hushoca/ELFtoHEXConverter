::AUTHOR: HUSEYIN HOCA
::DATE: 10 DECEMBER 2016
::===============================================================
::DRAG&DROP YOUR FILE ONTO THIS BATCH TO CONVERT FROM .ELF TO .HEX
::CHANGE THE COMPILER PATH TO THE COMPILER ON YOUR PC
::^ IN THE COMPILER PATH VARIABLE MAKES SURE THAT THE SPACES ARE
::PROCESSED RIGHT.

::get the name of the path which was drag&dropped on to the batch	
set "filename=%~n1"

::get the directory of the path which was drag&dropped on to the batch	
set "filepath=%~p1"

::get the drive which has the file in it
set "drive=%~d1"

::unnecessary variable but whatever...
set "newextension=.hex"

::compiler path for TrueStudio
set "compilerpath="C:\Program^ Files^ (x86)\Atollic\TrueSTUDIO^ for^ ARM^ 6.0.0\ARMTools\bin""

::go to the compiler path
cd %compilerpath%

::run the objcopy.exe with the -O ihex arguments which will convert
::the .elf file into .hex file 
arm-atollic-eabi-objcopy.exe -O ihex %1 "%drive%%filepath%%filename%%newextension%"
