# Usefull git commands

### Show git log with lines in terminal
```
git log --pretty=format:"%h %s" --graph
```


### Show short git log
```
git log -s
```
Explain:
```
example:
?? some_new_unstaged_file.txt
A  some_new_staged_file.txt
 M some_modified_unstaged_file
M  modified_staged_file.txt
 D deleted_file.txt
D  stagedeleted_file.txt
^^
||
|---> Unstaged
|
----> Staged
```