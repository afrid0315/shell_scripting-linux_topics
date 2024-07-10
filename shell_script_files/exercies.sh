# 1. Write a shell script that takes a string as input and reverses it.

#!/bin/bash
echo "Enter a string: "
read input
reversed=$(echo $input | rev)
echo "Reversed string: $reversed"




#2. Based on the “Harry Potter.Docx” File.
#a. Create a shell script that counts the number of lines, words, and characters in the attached file.
#b. Calculate the number of times the word Harry is coming in the file
#c. Convert all Harry to Harriet in the file and save it as a new file.
#a(Ans)
#!/bin/bash
file="Harry Potter.docx"

textfile="Harry Potter.txt"
docx2txt < "$file" > "textfile"

lines=$(wc -l < "$textfile")
words=$(wc -w < "$textfile")
characters=$(wc -m < "$textfile")

echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $characters"

#b(Ans)

#!/bin/bash
file="Harry Potter.txt"
count=$(grep -o -w "Harry" "$file" | wc -l)
echo "Word 'Harry' appears $count times in the file."

#c(Ans)
#!/bin/bash
file="Harry Potter.txt"
newfile="Harry Potter Modified.txt"
sed 's/Harry/Harriet/g' "$file" > "newfile"
echo "Converting all 'Harry' replaced with 'Harriet' and saved to $newfile."


#3. Write a script to check if a list of websites is reachable. websites=(“google.com”
#“github.com” “nonexistentwebsite.example”)

#(Ans)

#!/bin/bash
websites=(“google.com” “github.com” “nonexistentwebsite.example”)

for site in "${websites[@]}"
do 
  if curl -s --head --request GET "$site" | grep "200 OK" > /dev/null; then
    echo "$site is reachable"
  else
    echo "$site is not reachable"
  fi 
done


#4. Write a shell script to print the size of all files in a folder in descending order

#!/bin/bash

folder_path="./<path/Downloads>"

find "$folder_path" -type f -exec du -h {} + | sort -rh
