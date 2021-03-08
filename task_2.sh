#!/bin/bash

# 1. Download the webpage 'Rijksuniversiteit' from https://nl.wikipedia.org/wiki/Rijksuniversiteit_Groningen
function downloader {
	echo This script downloads the content of the webpage Rijksuniversiteit:
	echo 
	wget https://nl.wikipedia.org/wiki/Rijksuniversiteit_Groningen

	
}
# 2. Open the file in the linux shell by the command cat.
# 3. Search for occurences case insensitive of 'de' using grep -iow.
# 4. Word count the output using wc -w and only show the amount of words.
# 5. Remove the temporary file Rijksuniversiteit_Groningen
function counter {
	echo Now that the webpage is downloaded, we will count the occurences of the word 'de'.
	echo
	echo The amount of occurences is:
	cat Rijksuniversiteit_Groningen | grep -iow 'de' | wc -w
	rm Rijksuniversiteit_Groningen
	
}

downloader
counter


