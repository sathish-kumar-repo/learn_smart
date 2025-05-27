import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Try_Block extends StatefulWidget {
  const Try_Block({Key? key}) : super(key: key);

  @override
  State<Try_Block> createState() => _Try_BlockState();
}

class _Try_BlockState extends State<Try_Block> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 31,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Try Block'),
          const P(
              'In Python, the try block is used to enclose code that might raise an exception. If an exception is raised within the try block, the code in the corresponding except block is executed. This allows you to handle errors and exceptions in a controlled way, rather than letting the program crash.'),
          const P(
              'The try block in Python is used to enclose code that might raise an exception. If an exception is raised within the try block, it is caught by the associated except block, which can then handle the exception as desired. The basic structure of a try-except block in Python is as follows:'),
          Note(note),
          const H3('Syntax'),
          Code(title: 'Syntax', code: syntax, type: 'python'),
          const H3('Source Code'),
          Code(title: 'index.py', code: code1, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
          const H3('Type of Exception'),
          const Li('ArithmeticError'),
          const Li('AssertionError'),
          const Li('AttributeError'),
          const Li('BaseException'),
          const Li('BaseExceptionGroup'),
          const Li('BlockingIOError'),
          const Li('BrokenPipeError'),
          const Li('BufferError'),
          const Li('BytesWarning'),
          const Li('ChildProcessError'),
          const Li('ConnectionAbortedError'),
          const Li('ConnectionError'),
          const Li('ConnectionRefusedError'),
          const Li('ConnectionResetError'),
          const Li('DeprecationWarning'),
          const Li('EOFError'),
          const Li('Ellipsis'),
          const Li('EncodingWarning'),
          const Li('EnvironmentError'),
          const Li('Exception'),
          const Li('ExceptionGroup'),
          const Li('False'),
          const Li('FileExistsError'),
          const Li('FileNotFoundError'),
          const Li('FloatingPointError'),
          const Li('FutureWarning'),
          const Li('GeneratorExit'),
          const Li('IOError'),
          const Li('ImportError'),
          const Li('ImportWarning'),
          const Li('IndentationError'),
          const Li('IndexError'),
          const Li('InterruptedError'),
          const Li('IsADirectoryError'),
          const Li('KeyError'),
          const Li('KeyboardInterrupt'),
          const Li('LookupError'),
          const Li('MemoryError'),
          const Li('ModuleNotFoundError'),
          const Li('NameError'),
          const Li('None'),
          const Li('NotADirectoryError'),
          const Li('NotImplemented'),
          const Li('NotImplementedError'),
          const Li('OSError'),
          const Li('OverflowError'),
          const Li('PendingDeprecationWarning'),
          const Li('PermissionError'),
          const Li('ProcessLookupError'),
          const Li('RecursionError'),
          const Li('ReferenceError'),
          const Li('ResourceWarning'),
          const Li('RuntimeError'),
          const Li('RuntimeWarning'),
          const Li('StopAsyncIteration'),
          const Li('StopIteration'),
          const Li('SyntaxError'),
          const Li('SyntaxWarning'),
          const Li('SystemError'),
          const Li('SystemExit'),
          const Li('TabError'),
          const Li('TimeoutError'),
          const Li('True'),
          const Li('TypeError'),
          const Li('UnboundLocalError'),
          const Li('UnicodeDecodeError'),
          const Li('UnicodeEncodeError'),
          const Li('UnicodeError'),
          const Li('UnicodeTranslateError'),
          const Li('UnicodeWarning'),
          const Li('UserWarning'),
          const Li('ValueError'),
          const Li('Warning'),
          const Li('WindowsError'),
          const Li('ZeroDivisionError'),
          const Li('__build_class__'),
          const Li('__debug__'),
          const Li('__doc__'),
          const Li('__import__'),
          const Li('__loader__'),
          const Li('__name__'),
          const Li('__package__'),
          const Li('__spec__'),
          const Li('abs'),
          const Li('aiter'),
          const Li('all'),
          const Li('anext'),
          const Li('any'),
          const Li('ascii'),
          const Li('bin'),
          const Li('bool'),
          const Li('breakpoint'),
          const Li('bytearray'),
          const Li('bytes'),
          const Li('callable'),
          const Li('chr'),
          const Li('classmethod'),
          const Li('compile'),
          const Li('complex'),
          const Li('copyright'),
          const Li('credits'),
          const Li('delattr'),
          const Li('dict'),
          const Li('dir'),
          const Li('divmod'),
          const Li('enumerate'),
          const Li('eval'),
          const Li('exec'),
          const Li('exit'),
          const Li('filter'),
          const Li('float'),
          const Li('format'),
          const Li('frozenset'),
          const Li('getattr'),
          const Li('globals'),
          const Li('hasattr'),
          const Li('hash'),
          const Li('help'),
          const Li('hex'),
          const Li('id'),
          const Li('input'),
          const Li('int'),
          const Li('isinstance'),
          const Li('issubclass'),
          const Li('iter'),
          const Li('len'),
          const Li('license'),
          const Li('list'),
          const Li('locals'),
          const Li('map'),
          const Li('max'),
          const Li('memoryview'),
          const Li('min'),
          const Li('next'),
          const Li('object'),
          const Li('oct'),
          const Li('open'),
          const Li('ord'),
          const Li('pow'),
          const Li('print'),
          const Li('property'),
          const Li('quit'),
          const Li('range'),
          const Li('repr'),
          const Li('reversed'),
          const Li('round'),
          const Li('set'),
          const Li('setattr'),
          const Li('slice'),
          const Li('sorted'),
          const Li('staticmethod'),
          const Li('str'),
          const Li('sum'),
          const Li('super'),
          const Li('tuple'),
          const Li('type'),
          const Li('vars'),
          const Li('zip'),
        ],
      ),
    );
  }
}

var note = '''
There are Two types of errors
  1. Run Time Error
        eg, 10/0,...
  2. Compile Time Error
        eg, missing comma, quotation, bracket,..
''';
var syntax = '''
try:
    # code that might raise an exception
except ExceptionType1:
    # code to handle ExceptionType1
except ExceptionType2:
    # code to handle ExceptionType2
except:
    # code to handle any other exception
else:
    # code to run if no exception was raised
finally:
    # code that will always be executed, regardless of whether an exception was raised or not
''';
var code2 = '''
division by zero
A Value :  0.4
division by zero
Thank You
['ArithmeticError', 'AssertionError', 'AttributeError', 'BaseException', 'BaseExceptionGroup', 'BlockingIOError', 'BrokenPipeError', 'BufferError', 'BytesWarning', 'ChildProcessError', 'ConnectionAbortedError', 'ConnectionError', 'ConnectionRefusedError', 'ConnectionResetError', 'DeprecationWarning', 'EOFError', 'Ellipsis', 'EncodingWarning', 'EnvironmentError', 'Exception', 'ExceptionGroup', 'False', 'FileExistsError', 'FileNotFoundError', 'FloatingPointError', 'FutureWarning', 'GeneratorExit', 'IOError', 'ImportError', 'ImportWarning', 'IndentationError', 'IndexError', 'InterruptedError', 'IsADirectoryError', 'KeyError', 'KeyboardInterrupt', 'LookupError', 'MemoryError', 'ModuleNotFoundError', 'NameError', 'None', 'NotADirectoryError', 'NotImplemented', 'NotImplementedError', 'OSError', 'OverflowError', 'PendingDeprecationWarning', 'PermissionError', 'ProcessLookupError', 'RecursionError', 'ReferenceError', 'ResourceWarning', 'RuntimeError', 'RuntimeWarning', 'StopAsyncIteration', 'StopIteration', 'SyntaxError', 'SyntaxWarning', 'SystemError', 'SystemExit', 'TabError', 'TimeoutError', 'True', 'TypeError', 'UnboundLocalError', 'UnicodeDecodeError', 'UnicodeEncodeError', 'UnicodeError', 'UnicodeTranslateError', 'UnicodeWarning', 'UserWarning', 'ValueError', 'Warning', 'WindowsError', 'ZeroDivisionError', '__build_class__', '__debug__', '__doc__', '__import__', '__loader__', '__name__', '__package__', '__spec__', 'abs', 'aiter', 'all', 'anext', 'any', 'ascii', 'bin', 'bool', 'breakpoint', 'bytearray', 'bytes', 'callable', 'chr', 'classmethod', 'compile', 'complex', 'copyright', 'credits', 'delattr', 'dict', 'dir', 'divmod', 'enumerate', 'eval', 'exec', 'exit', 'filter', 'float', 'format', 'frozenset', 'getattr', 'globals', 'hasattr', 'hash', 'help', 'hex', 'id', 'input', 'int', 'isinstance', 'issubclass', 'iter', 'len', 'license', 'list', 'locals', 'map', 'max', 'memoryview', 'min', 'next', 'object', 'oct', 'open', 'ord', 'pow', 'print', 'property', 'quit', 'range', 'repr', 'reversed', 'round', 'set', 'setattr', 'slice', 'sorted', 'staticmethod', 'str', 'sum', 'super', 'tuple', 'type', 'vars', 'zip']
158
0.4
denominator cant be zero
Please Enter Numbers only
Invalid Index
File Not Found
0.5
10
[Errno 2] No such file or directory: 'ramu.txt'
''';
var code1 = '''
# try block in Python
try:
    a = 10 / 0
except Exception as e:
    print(e)


# Try Else
# there is no exception then work else block
try:
    a = 10 / 25
except Exception as e:
    print(e)
else:
    print("A Value : ", a)


# Try else finally
# if exception or not , finally is work
try:
    a = 10 / 0
except Exception as e:
    print(e)
else:
    print("A Value : ", a)
finally:
    print("Thank You")


# Type of Exceptions in Python
print(dir(locals()["__builtins__"]))
print(len(dir(locals()["__builtins__"])))


# Nameerror Exception
try:
    print(a)
except NameError as e:
    print("A is not Defined")


# ZeroDivisionError
try:
    print(10 / 0)
except ZeroDivisionError as e:
    print("denominator cant be zero")


# ValueError
try:
    a = int("Joes")
except ValueError as e:
    print("Please Enter Numbers only")


# IndexError
try:
    a = [10, 20, 30, 40]
    print(a[10])
except IndexError as e:
    print("Invalid Index")

# FileNotFoundError
try:
    f = open("test.txt")
except FileNotFoundError:
    print("File Not Found")
else:
    print(f.read())


# Handling Multiple Exceptions
try:
    a = 10 / 20
    print(a)
    b = [10, 20, 30, 40]
    print(b[0])
    a = open("ramu.txt")
except ZeroDivisionError:
    print("denominator cant be zero")
except IndexError:
    print("Invalid Index")
except Exception as e:
    print(e)
''';
