# Usefull git commands


### Checkout remote branch

Jakub's answer actually improves on this. With Git versions ≥ 1.6.6, you can just do:

```
git fetch
git checkout test
```


https://stackoverflow.com/a/1783426/333291


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