# yara
YARA is a tool aimed at (but not limited to) helping malware researchers to identify and classify malware samples. 

Let's see how we can get started with it.

Step 1: Let's download Yara tool from http://virustotal.github.io/yara/

Step 2: Let's download PEStudio tool. It is a tool used for static analysis of malware/portable executables. 

Step 3: Download a portable executable (say putty.exe from https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)

Step 4: Open putty.exe using PEStudio tool and retreive some attributes that we will use for Yara rules.
        [For simplicity, we will grab first-byte-hex value and indicators > URL pattern value]

Step 5: Create Yara rule using a text editor and give it a name (say myYaraRule.yara)

Step 5: Run Yara tool [As an example: We have saved yara rule file at c:\rules and we are using yara tool to analyze files under c:\Downloads using the yara rule.]
        >yara64.exe  -r c:\rules\myYaraRule.yara  c:\Downloads
        [This should return all the files with the matching signatures/logics specified in the yara rule.]
  

Want to learn more, refer to this guide 
https://www.varonis.com/blog/yara-rules
