# Advanced bash

## levels of computing
![img.png](images/img.png)
```
- `uname` = username
flags = 
-a = --all
-s =
-r =
-i = 
-o = 
-si = 
-srp = 
```

```
cd = change directory - allows you to move around into different folder
cd.. = takes us back one folder
cd../../ = takes us back two directorys
cd / = back to root directory
cd ~ = back to home directory  
```

```
ls = lists files and folders in directory 
ls -l = lists files with permissions (l stand for long format)
ls 
```
Absolute path = the path to the file/folder from the base of the machine
Relative path = where is it based on the current file you are in 

![img_1.png](images/img_1.png)

### Creating files and folders

```
touch + `filename` = used to create a file
nano + `filename` = used to make a file and allows you to open files so uou may edit it
cat + `file name` = return content of a file
mkdir + `name` = used to create a directory
```

```
cp + `name` + `name of reciving file` = used to copy files into other files
cp -rf `folder frome `folder receiving` = copy the content of a folder into another folder (f = force - forcing the copy even if its in use) (r =  recursive - everything within the folder will be affected)
rsync -r + `folder we want to sync with` + `floder we are snycing up` = allows us to sync 2 differnt folders
```
```
mv + `file name` + `folder you're moving to` = allows you to move files (if the folder you're moving to is further down just add `../` before folder destination
```
```
rm + `filename` = delete file
rm -rf + `folder` = delets folder
```
Removing files can be dangerous as it doesn't do a stop check and will delete straight away

```
pwd = shows your current directory you are in 
-help = will show you the commands and explain how they are used
man ls = manual
mand -k `` = will allow you to specify what you are looking for in the manual 
grep ` ` =
grep * =
grep ` ` * -R =
ls f* =example of a wildcard that allows you to search for any file/folder that contains the secifeid letter (in thid example i used f)
```

