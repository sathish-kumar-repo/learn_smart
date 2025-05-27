import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Abstraction_and_Encapsulation extends StatefulWidget {
  const Abstraction_and_Encapsulation({Key? key}) : super(key: key);

  @override
  State<Abstraction_and_Encapsulation> createState() =>
      _Abstraction_and_EncapsulationState();
}

class _Abstraction_and_EncapsulationState
    extends State<Abstraction_and_Encapsulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 43,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Abstraction and Encapsulation'),
          const P(
              'Data abstraction and encapsulation are synonymous as data abstraction is achieved through encapsulation. Abstraction is used to hide internal details and show only functionalities. Abstracting something means to give names to things, so that the name captures the basic idea of what a function or a whole program does. Encapsulation is used to restrict access to methods and variables. In encapsulation, code and data are wrapped together within a single unit from being modified by accident.'),
          const Img(name: 'DataAbstraction.png', height: 300),
          const Img(name: 'DataEncapsulation.png', height: 300),
          const H3('Source Code'),
          Code(title: 'index.py', code: code1, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
        ],
      ),
    );
  }
}

var code2 = '''
    1.Display Book
    2.Borrow Book
    3.Return Book

Enter Your Choice : 1
Available Books
C
C++
Java

    1.Display Book
    2.Borrow Book
    3.Return Book

Enter Your Choice : 2
Enter Book Name To Borrow : C
Get Your Book Now

    1.Display Book
    2.Borrow Book
    3.Return Book

Enter Your Choice : 1
Available Books
C++
Java

    1.Display Book
    2.Borrow Book
    3.Return Book

Enter Your Choice : 3
Enter Book Name To Return : Python
You have returned the book

    1.Display Book
    2.Borrow Book
    3.Return Book

Enter Your Choice : 1
Available Books
C++
Java
Python

    1.Display Book
    2.Borrow Book
    3.Return Book

Enter Your Choice : 4
Thank You come again
''';
var code1 = '''
# Abstraction and Encapsulation in Python
 
class Library:
    def __init__(self, books):
        self.books = books
 
    def list_books(self):
        print("Available Books")
        for book in self.books:
            print(book)
 
    def borrow_book(self, borrow_book):
        if borrow_book in self.books:
            print("Get Your Book Now")
            self.books.remove(borrow_book)
        else:
            print("Book not Available")
 
    def receive_book(self, receive_book):
        print("You have returned the book")
        self.books.append(receive_book)
 
 
books = ['C', 'C++', 'Java']
o = Library(books)
 
msg = """
    1.Display Book
    2.Borrow Book
    3.Return Book
"""
while True:
    print(msg)
    ch = int(input("Enter Your Choice : "))
    if ch == 1:
        o.list_books()
    elif ch == 2:
        book = input("Enter Book Name To Borrow : ")
        o.borrow_book(book)
    elif ch == 3:
        book = input("Enter Book Name To Return : ")
        o.receive_book(book)
    else:
        print("Thank You come again")
        quit()
''';
