/*
My first yara rule to detect a putty program. For this, I downloaded multiple copies of putty.exe, named the files differently, and also changed the extension of one file from .exe to .txt. We will check if Yara tool will identify all the files despite obfuscation attempt has been made by merely changing file names and file types. 
*/
rule myfirst_yararule {

	strings:
		//indicators URL pattern as identified by PE Studio
		$url="https://www.chiark.green"
		
		
		//first-bytes-hex as provided by PE Studio
		$first_bytes="4D 5A 78 00 01"
	
		condition:
		
		$url or $first_bytes

}
