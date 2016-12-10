##ELF to HEX Converter##
While I was working with the TrueStudio, I had to compile my project into a binary file so I can flash the new development board. Then I realized that all this time I was debugging and TrueStudio Lite does not support .hex or .bin files. So you cannot perma flash your code.

After some research in my directories I found the compiler in the TrueStudio and after some more digging and research I have created this batch file as a quick solution.

## INSTRUCTIONS ##

**Right Click on to the batch file then, click Edit, then change the following line:**

    set "compilerpath="C:\Program^ Files^ (x86)\Atollic\TrueSTUDIO^ for^ ARM^ 6.0.0\ARMTools\bin""

to (insert your compiler location there, **make sure you replace the spaces with "^ " without quotes.**)

	set "compilerpath="<YOUR-COMPILER-LOCATION>""

Then simply drag and drop your .elf file onto the batch file and it will create the .hex file in the same directory and same name as .elf file.


![](http://www.ciit.edu.ph/wp-content/uploads/2016/02/Picture13.jpg)