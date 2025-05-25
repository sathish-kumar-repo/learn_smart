import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/mongo_db/topicsName/mongoDbTopics.dart';

class InsertMethod extends StatefulWidget {
  const InsertMethod({Key? key}) : super(key: key);

  @override
  State<InsertMethod> createState() => _InsertMethodState();
}

class _InsertMethodState extends State<InsertMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: mongoDBTopics,
        img: 'mongoDBt.png',
      ),
      body: MyPage(
        children: [
          const H1('Insert Methods - MongoDB'),
          const H2('Insert Singe Document'),
          const P(
              'db.collection.insertOne() Inserts a single document into a collection.'),
          const P('Inserting a Document without Specifying an _id Field'),
          Code(title: 'Compass', code: code1, type: 'javascript'),
          const P(
              'Because the documents did not include _id, mongod creates and adds the _id field and assigns it a unique ObjectId() value.'),
          const P(
              'The ObjectId values are specific to the machine and time when the operation is run.'),
          const P('A Query to view all inserted documents'),
          Code(title: 'Compass', code: code2, type: 'javascript'),
          const P('Insert a Document Specifying an _id Field'),
          const P(
              'In the following example, the document passed to the insertOne() method includes the _id field. The value of _id must be unique within the collection to avoid duplicate key error.'),
          Code(title: 'Compass', code: code3, type: 'javascript'),
          const H2('Insert Multiple Documents'),
          const P('Insert Several Document without Specifying an _id Field'),
          Code(title: 'Compass', code: code4, type: 'javascript'),
          const P(
              'Inserting an duplicate value for _id throws an exception. The following attempts to insert a document with a _id value that already exists. Since _id : 2 already exists'),
          Code(title: 'Compass', code: code5, type: 'javascript'),
          const P(
              'Note that one document was inserted: The first document of _id: 5 will insert successfully, but the second insert will fail. This will also stop additional documents left in the queue from being inserted.With ordered to false, the insert operation would continue with any remaining documents.'),
          Code(title: 'Compass', code: code6, type: 'javascript'),
        ],
      ),
    );
  }
}

var code6 = '''
db.shop.insertMany([
      { _id: 5, item: "Papaya" },
      { _id: 2, item: "Cherry" },
      { _id: 6, item: "Dragon Fruit"},
      { _id: 7, item: "Jackfruit" }
    ],{ordered:false});
''';
var code5 = '''
db.shop.insertMany([
      { _id: 5, item: "Papaya" },
      { _id: 2, item: "Cherry" },
      { _id: 6, item: "Dragon Fruit" },
      { _id: 7, item: "Jackfruit" }
    ]);
''';
var code4 = '''
db.shop.insertMany([
  { _id: 2, item: "Orange" },
  { _id: 3, item: "Pineapple" },
  { _id: 4, item: "banana" }
]);
''';
var code3 = '''
db.shop.insertOne({"_id":1,"item":"Sugar"})
''';
var code2 = '''
db.shop.find()
''';
var code1 = '''
db.shop.insertOne({
  "item":"Rice",
  "tags":["food","white"],
  "stock":{
    "quantity":150,
    "uom":"KG"
  }
})
''';
