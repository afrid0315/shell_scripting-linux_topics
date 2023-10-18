# shell_scripting

1. **sed -n '3,5'p test.sh** --> This command used to print specific lines from a text file. sed- Stream Editor, -n -it allows you to control what gets printed explicitly, '3,5'- from line3 to line5 going to print, p-print, test.sh- shell script file
2. **awk '{print}' test.sh** --> This command used to print whole file.
3. **awk '/Hello/{print}' test.sh** --> prints the full line with 'Hello' word.
4. **awk -F'[.]' '/^Version/{print $1"."$2"."$3"."$4+1}' test.sh** -->Version Increment(script version will be updated automatically in console but not in actual file or script).
5. **sed -i 's/world/India/g' test.sh** --> replace a value in a file(replacing "world" to "India" from test.sh file)
