import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class SQLitePython extends StatefulWidget {
  const SQLitePython({Key? key}) : super(key: key);

  @override
  State<SQLitePython> createState() => _SQLitePythonState();
}

class _SQLitePythonState extends State<SQLitePython> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 52,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SQLite Database Database Connectivity in Python'),
          const H2('A PROGRAM THAT ILLUSTRATES SQLITE DATABASE CONNECTION'),
          const H3('AIM:'),
          const P('   To write a python program using Database Connection.'),
          const H3('ALGORITHM:'),
          const Li('STEP 1:To create the database in sqlite3 Browser.'),
          const Li('STEP 2: To assign the database name.'),
          const Li(
              'STEP 3: To create the table name, field name and data type.'),
          const Li(
              'STEP 3: To create the table name, field name and data type.'),
          const Li(
              'STEP 5: To establish the database connection with sqlite3.'),
          const Li('STEP 6: :Establish hello.db table name.'),
          const Li('STEP 7: To write the sql query.'),
          const Li('STEP 8: Create a function for Select data in db.'),
          const Li('STEP 9: Create a function for Insert data in db.'),
          const Li('STEP 10 Create a function for Delete data in db.'),
          const Li('STEP 11: Create a function for Update data in db.'),
          const H3('Source Code'),
          Code(title: 'db.py', code: code1, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
        ],
      ),
    );
  }
}

var code2 = '''
1.Insert
2.Update
3.Delete
4.Select

Select Your Choice : 1
Add New Record
Enter Name : Ram
Enter Age : 23
Enter City : NAMAKKAL
User Details Added
Enter 1 To Continue : 1
Select Your Choice : 2
Edit A Record
Enter ID : 1
Enter Name : Siva
Enter Age : 21
Enter City : CHENNAI
User Details Updated
Enter 1 To Continue : 1
Select Your Choice : 4
Print All Record
(1, 'Siva', 21, 'CHENNAI')
(2, 'Ram', 23, 'NAMAKKAL')
Enter 1 To Continue : 4
Thank You
''';
var code1 = '''
import sqlite3

con = sqlite3.connect("hello.db")


def insertData(name, age, city):
    qry = "insert into users (NAME,AGE,CITY) values (?,?,?);"  # (this is bind parameter)bind the value
    con.execute(qry, (name, age, city))
    # Commit to save the data
    con.commit()
    print("User Details Added")


def updateData(name, age, city, id):
    qry = "update users set NAME=?,AGE=?,CITY=? where id=?;"
    con.execute(qry, (name, age, city, id))
    con.commit()
    print("User Details Updated")


def deleteData(id):
    qry = "delete from users where id=?;"
    con.execute(qry, (id))
    con.commit()
    print("User Details Deleted")


def selectData():
    qry = "select * from users"
    result = con.execute(qry)
    for row in result:
        print(row)


print(
    """
1.Insert
2.Update
3.Delete
4.Select
"""
)
ch = 1
while ch == 1:
    c = int(input("Select Your Choice : "))
    if c == 1:
        print("Add New Record")
        name = input("Enter Name : ")
        age = input("Enter Age : ")
        city = input("Enter City : ")
        insertData(name, age, city)
    elif c == 2:
        print("Edit A Record")
        id = input("Enter ID : ")
        name = input("Enter Name : ")
        age = input("Enter Age : ")
        city = input("Enter City : ")
        updateData(name, age, city, id)
    elif c == 3:
        print("Delete A Record")
        id = input("Enter ID : ")
        deleteData(id)
    elif c == 4:
        print("Print All Record")
        selectData()
    else:
        print("Invalid Selection")
    ch = int(input("Enter 1 To Continue : "))
print("Thank You")
''';
