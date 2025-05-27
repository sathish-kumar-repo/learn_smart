import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Py%20Module/topicName/pyModuleTopics.dart';

class OSPy extends StatefulWidget {
  const OSPy({Key? key}) : super(key: key);

  @override
  State<OSPy> createState() => _OSPyState();
}

class _OSPyState extends State<OSPy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: pyModule,
        img: 'py.jpg',
      ),
      body: MyPage(
        children: [
          const H1('OS Module'),
          const P(
              'The OS module in Python provides functions for interacting with the operating system.'),
          const H3('Getting the Current working directory'),
          const P(
              'To get the location of the current working directory os.getcwd() is used.'),
          Code(title: 'main.py', code: code1, type: 'python'),
          const H3('Changing the Current working directory'),
          const P(
              'To change the current working directory(CWD) os.chdir() method is used. This method changes the CWD to a specified path. It only takes a single argument as a new directory path.'),
          const Note(
              'The current working directory is the folder in which the Python script is operating.'),
          Code(title: 'main.py', code: code2, type: 'python'),
          const H3('Creating a Directory'),
          const P(
              'There are different methods available in the OS module for creating a directory.'),
          const Li('os.mkdir()'),
          const Li('os.makedirs()'),
          const H4('Using os.mkdir()'),
          const P(
              'os.mkdir() method in Python is used to create a directory named path with the specified numeric mode. This method raises FileExistsError if the directory to be created already exists.'),
          Code(title: 'main.py', code: code3, type: 'python'),
          const H4('Using os.makedirs()'),
          const P(
              'os.makedirs() method in Python is used to create a directory recursively. That means while making leaf directory if any intermediate-level directory is missing, os.makedirs() method will create them all.'),
          Code(title: 'main.py', code: code4, type: 'python'),
          const H3('Listing out Files and Directories with Python'),
          const P(
              'os.listdir() method in Python is used to get the list of all files and directories in the specified directory. If we don’t specify any directory, then the list of files and directories in the current working directory will be returned.'),
          Code(title: 'main.py', code: code5, type: 'python'),
          const H3('Deleting Directory or Files using Python'),
          const P(
              'OS module proves different methods for removing directories and files in Python.'),
          const Li('Using os.remove()'),
          const Li('Using os.rmdir()'),
          const H4('Using os.remove()'),
          const P(
              'os.remove() method in Python is used to remove or delete a file path. This method can not remove or delete a directory. If the specified path is a directory then OSError will be raised by the method.'),
          Code(title: 'main.py', code: code6, type: 'python'),
          const H4('Using os.rmdir()'),
          const P(
              'os.rmdir() method in Python is used to remove or delete an empty directory. OSError will be raised if the specified path is not an empty directory.'),
          Code(title: 'main.py', code: code7, type: 'python'),
          const H3('Commonly Used Functions'),
          const H4('1. os.name:'),
          const P(
              'This function gives the name of the operating system dependent module imported. The following names have currently been registered: ‘posix’, ‘nt’, ‘os2’, ‘ce’, ‘java’ and ‘riscos’.'),
          Code(title: 'main.py', code: code8, type: 'python'),
          const Note(
              'It may give different output on different interpreters, such as ‘nt’ when you run the code here.'),
          const H4('2. os.error:'),
          const P(
              'All functions in this module raise OSError in the case of invalid or inaccessible file names and paths, or other arguments that have the correct type, but are not accepted by the operating system. os.error is an alias for built-in OSError exception. '),
          Code(title: 'main.py', code: code9, type: 'python'),
          const H4('3. os.popen():'),
          const P(
              'This method opens a pipe to or from command. The return value can be read or written depending on whether the mode is ‘r’ or ‘w’. '),
          const H5('Syntax: '),
          const P('   os.popen(command[, mode[, bufsize]])'),
          const P(
              'Parameters mode & bufsize are not necessary parameters, if not provided, default ‘r’ is taken for mode. '),
          Code(title: 'main.py', code: code10, type: 'python'),
          const Note(
              'Output for popen() will not be shown, there would be direct changes into the file.'),
          const H4('4. os.close():'),
          const P(
              'Close file descriptor fd. A file opened using open(), can be closed by close()only. But file opened through os.popen(), can be closed with close() or os.close(). If we try closing a file opened with open(), using os.close(), Python would throw TypeError. '),
          Code(title: 'main.py', code: code11, type: 'python'),
          const Note(
              'The same error may not be thrown, due to the non-existent file or permission privilege.'),
          const H4('5. os.rename():'),
          const P(
              'A file old.txt can be renamed to new.txt, using the function os.rename(). The name of the file changes only if, the file exists and the user has sufficient privilege permission to change the file.'),
          Code(title: 'main.py', code: code12, type: 'python'),
          const H5('Understanding the Output:'),
          const P(
              'A file name “GFG.txt” exists, thus when os.rename() is used the first time, the file gets renamed. Upon calling the function os.rename() second time, file “New.txt” exists and not “GFG.txt thus Python throws FileNotFoundError. '),
          const H4('6. os.remove():'),
          const P(
              'Using the Os module we can remove a file in our system using the remove() method. To remove a file we need to pass the name of the file as a parameter. '),
          Code(title: 'main.py', code: code13, type: 'python'),
          const P(
              'The OS module provides us a layer of abstraction between us and the operating system. When we are working with os module always specify the absolute path depending upon the operating system the code can run on any os but we need to change the path exactly. If you try to remove a file that does not exist you will get FileNotFoundError. '),
          const H4('7. os.path.exists(): '),
          const P(
              'This method will check whether a file exists or not by passing the name of the file as a parameter. OS module has a sub-module named PATH by using which we can perform many more functions. '),
          Code(title: 'main.py', code: code14, type: 'python'),
          const P(
              'As in the above code, the file does not exist it will give output False. If the file exists it will give us output True. '),
          const H4('8. os.path.getsize(): '),
          const P(
              'In this method, python will give us the size of the file in bytes. To use this method we need to pass the name of the file as a parameter.'),
          Code(title: 'main.py', code: code15, type: 'python'),
        ],
      ),
    );
  }
}

var code = '''''';
var code15 = '''
import os #importing os module
  
size = os.path.getsize("02_docstring.py")
  
print("Size of the file is", size," bytes.")
# Size of the file is 138  bytes.
''';
var code14 = '''
import os

# importing os module

result = os.path.exists("file_name")  # giving the name of the file as a parameter.

print(result)
# False
''';
var code13 = '''
import os #importing os module.
  
os.remove("file_name.txt") #removing the file.
''';
var code12 = '''
import os
  
  
fd = "GFG.txt"
os.rename(fd,'New.txt')
os.rename(fd,'New.txt')
"""
Traceback (most recent call last):
  File "d:\\Tutorial\\py\\07_osModulepy.py", line 6, in <module>
    os.rename(fd,'New.txt')
FileNotFoundError: [WinError 2] The system cannot find the file specified: 'GFG.txt' -> 'New.txt'
"""
''';
var code11 = '''
import os
  
  
fd = "GFG.txt"
file = open(fd, 'r')
text = file.read()
print(text)
os.close(file)
"""
Traceback (most recent call last):
  File "C:\\Users\\GFG\\Desktop\\GeeksForGeeksOSFile.py", line 6, in 
    os.close(file)
TypeError: an integer is required (got type _io.TextIOWrapper)
"""
''';
var code10 = '''
import os
fd = "GFG.txt"
  
# popen() is similar to open()
file = open(fd, 'w')
file.write("Hello worlds")
file.close()
file = open(fd, 'r')
text = file.read()
print(text)
  
# popen() provides a pipe/gateway and accesses the file directly
file = os.popen(fd, 'w')
file.write("Hello")
# File not closed, shown in next function.
''';
var code9 = '''
import os


try:
    # If the file does not exist,
    # then it would throw an IOError
    filename = "GFG.txt"
    f = open(filename,'r')
    text = f.read()
    f.close()

# Control jumps directly to here if
# any of the above lines throws IOError.
except IOError:
    # print(os.error) will <class 'OSError'>
    print("Problem reading: " + filename)

# In any case, the code then continues with
# the line after the try/except
''';
var code8 = '''
import os
  
print(os.name)
# nt
''';
var code7 = '''
# Python program to explain os.rmdir() method

# importing os module
import os

# Directory name
directory = "Geeks"

# Parent Directory
parent = "D:/Pycharm projects/"

# Path
path = os.path.join(parent, directory)

# Remove the Directory
# "Geeks"
os.rmdir(path)
''';
var code6 = '''
# Python program to explain os.remove() method 
      
# importing os module 
import os 
      
# File name 
file = 'file1.txt'
      
# File location 
location = "D:/Pycharm projects/GeeksforGeeks/Authors/Nikhil/"
      
# Path 
path = os.path.join(location, file) 
      
# Remove the file 
# 'file.txt' 
os.remove(path) 
''';
var code5 = '''
# importing os module
import os

# Get the list of all files and directories
# in the root directory
path = "/"
dir_list = os.listdir(path)

print("Files and directories in '", path, "' :")

# print the list
print(dir_list)
"""
Files and directories in ' / ' :
['\$RECYCLE.BIN', 'Andriod', 'Andriod_Tutorial', 'db_pro', 'Download', 'END', 'English', 'Flutter Project', 'lifestyle', 'New folder', 'pdf', 'personal_workout', 'Program Files', 'py ppt', 'Recovery', 'Sathish Kumar', 'Sathish Kumar unused website content', 'sixpacks', 'smart_learning', 'System Volume Information', 'temporary', 'Tutorial', 'Video', 'Web Projects', 'Word']
"""
''';
var code4 = '''
# Python program to explain os.makedirs() method 
      
# importing os module 
import os 
      
# Leaf directory 
directory = "Nikhil"
      
# Parent Directories 
parent_dir = "D:/Tutorial/py/GeeksForGeeks/Authors"
      
# Path 
path = os.path.join(parent_dir, directory) 
      
# Create the directory 
# 'Nikhil' 
os.makedirs(path) 
print("Directory '% s' created" % directory) 
      
# Directory 'GeeksForGeeks' and 'Authors' will 
# be created too 
# if it does not exists 
      
      
      
# Leaf directory 
directory = "c"
      
# Parent Directories 
parent_dir = "D:/Tutorial/py/GeeksforGeeks/a/b"
      
# mode 
mode = 0o666
      
path = os.path.join(parent_dir, directory) 
      
# Create the directory 'c' 
      
os.makedirs(path, mode) 
print("Directory '% s' created" % directory) 
      
      
# 'GeeksForGeeks', 'a', and 'b' 
# will also be created if 
# it does not exists 
      
# If any of the intermediate level 
# directory is missing 
# os.makedirs() method will 
# create them 
      
# os.makedirs() method can be 
# used to create a directory tree
"""
Directory 'Nikhil' created
Directory 'c' created
"""
''';
var code3 = '''
# Python program to explain os.mkdir() method

# importing os module
import os


# Directory
directory = "Geeks"

# Parent Directory path
parent_dir = "D:/Tutorial/py"

# mode
mode = 0o666

# Path
path = os.path.join(parent_dir, directory)

# Create the directory
# 'GeeksForGeeks' in
# '/home / User / Documents'
# with mode 0o666
os.mkdir(path, mode)
print("Directory '% s' created" % directory)
"""
Directory 'Geeks' created
"""
''';
var code2 = '''
import os


# Function to Get the current
# working directory
def current_path():
    print("Current working directory")
    print(os.getcwd())
    print()


# Driver's code
# Printing CWD before
current_path()

# Changing the CWD
os.chdir("../")

# Printing CWD after
current_path()
"""
Current working directory
D:\\Tutorial\\py

Current working directory
D:\\Tutorial
"""
''';
var code1 = '''
# importing os module 
import os 
      
# Get the current working 
# directory (CWD) 
cwd = os.getcwd() 
      
# Print the current working 
# directory (CWD) 
print("Current working directory:", cwd) 
# Current working directory: D:\\Tutorial\\py
''';
