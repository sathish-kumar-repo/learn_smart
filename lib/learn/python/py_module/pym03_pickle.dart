import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/py_module/topicName/pyModuleTopics.dart';

class PicklePy extends StatefulWidget {
  const PicklePy({Key? key}) : super(key: key);

  @override
  State<PicklePy> createState() => _PicklePyState();
}

class _PicklePyState extends State<PicklePy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: pyModule,
        img: 'py.jpg',
      ),
      body: MyPage(
        children: [
          const H3('Pickling with example'),
          const P(
              'In Python, we sometimes need to save the object on the disk for later use. This can be done by using Python pickle.'),
          const H2('Python Pickle — Python object serialization'),
          const P(
              'Python pickle module is used for serializing and de-serializing a Python object structure. Any object in Python can be pickled so that it can be saved on disk. What Pickle does is it “serializes” the object first before writing it to a file. Pickling is a way to convert a Python object (list, dictionary, etc.) into a character stream. The idea is that this character stream contains all the information necessary to reconstruct the object in another Python script.'),
          const H3('Sequence text to binary'),
          Code(title: 'main.py', code: code1, type: 'python'),
          const H3('Binary to Sequence text '),
          Code(title: 'main.py', code: code2, type: 'python'),
        ],
      ),
    );
  }
}

var code2 = '''
# importing pickle
import pickle

file = "mycars.pkl"
fileObj = open(file, "rb")
print(pickle.load(fileObj))
''';
var code1 = '''
# importing pickle
import pickle

"""only working in sequence object
"""
cars = ["audi", "benz", "BMW"]
file = "mycars.py"
fileObj = open(file, "wb")
pickle.dump(cars, fileObj)
fileObj.close()
''';
