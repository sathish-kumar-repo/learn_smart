import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Open_a_File extends StatefulWidget {
  const Open_a_File({Key? key}) : super(key: key);

  @override
  State<Open_a_File> createState() => _Open_a_FileState();
}

class _Open_a_FileState extends State<Open_a_File> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 51,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('File Handling in Python'),
          const P(
              'File handling is an important part of any web application. Python has several functions for creating, reading, updating, and deleting files.'),
          const H2('Types Of File in Python'),
          const H3('Binary file ( written in binary language, 0s, and 1s )'),
          const P(
              '    All binary files follow a specific format. We can open some binary files in the normal text editor but we can\'t read the content present inside the file.'),
          const H3('Text file'),
          const P(
              '    A text file exists stored as data within a computer file system. Text files don’t have any specific encoding and it can be opened in normal text editor itself.'),
          const H3('How to File Open'),
          const P(
              'The key function for working with files in Python is the open() function. This function takes two parameters; filename, and mode.'),
          const H4('  Syntax :'),
          const P('     file_object = open ( file_name , mode )'),
          const Li(
              'file_name is a string that represents the name of the file you want to open'),
          const Li(
              'modeis a string that represents how you want to open the file.'),
          const H4('Some Common Modes'),
          const Li('\'r\': read-only mode (default)'),
          const Li(
              '\'w\': write mode (overwrites existing file or creates a new one)'),
          const Li(
              '\'a\': append mode (appends to an existing file or creates a new one)'),
          const Li(
              '\'x\': exclusive creation mode (creates a new file, fails if the file already exists)'),
          const P(
              'Once the file is opened, you can perform various operations on it, such as reading or writing to it. It is important to close the file once you are done with it, using the close() method.'),
          const H3('Delete a File in Python'),
          const P(
              'Removing the files or a single file from a particular directory when it is no longer required is the basic concept of deleting a file. To delete a file, you must import the module os, then use the remove() function provided by the module to delete the file. It takes the file location as a parameter.'),
          const H4('  Syntax'),
          const P('    os.remove ( file_location )'),
          const H3('Source Code'),
          Code(title: 'index.py', code: code1, type: 'python'),
        ],
      ),
    );
  }
}

var code1 = '''
# Read the file

try:
    f = open("ram.txt", "r")

    # Read Complete file
    print(f.read())

    # Read line by line
    print(f.readline())

    # Read First 2 Character
    print(f.readline(2))

    # Return list of all data
    print(f.readlines())

    # Read file using a for loop
    for line in f:
        print(line)


except FileNotFoundError:
    print("File not Found")
else:
    print("Thank You")
    f.close()  # Dispose the object

# -------------------------------------------

# Write the File
try:
    f = open("ram.txt", "w")

    # Write the file (this is overwrite the file)
    f.write("\\nThis is New Line")


except FileNotFoundError:
    print("File not Found")
else:
    print("Thank You")
    f.close()

# -------------------------------------------

# Append the File
try:
    f = open("ram.txt", "a")

    # Add new line to end of the file
    f.write("\\nThis is New Line")


except FileNotFoundError:
    print("File not Found")
else:
    print("Thank You")
    f.close()

# -------------------------------------------

# Delete the File

import os # to get current system permission
 
if os.path.exists("ram.txt"):
    os.remove("ram.txt")
    # to remove folder
    os.rmdir('folder_name')
else:
    print("File Not Found")
''';
