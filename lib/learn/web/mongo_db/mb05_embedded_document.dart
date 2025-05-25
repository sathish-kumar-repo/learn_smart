import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/mongo_db/topicsName/mongoDbTopics.dart';

class EmbeddedOrNestedDocument extends StatefulWidget {
  const EmbeddedOrNestedDocument({Key? key}) : super(key: key);

  @override
  State<EmbeddedOrNestedDocument> createState() =>
      _EmbeddedOrNestedDocumentState();
}

class _EmbeddedOrNestedDocumentState extends State<EmbeddedOrNestedDocument> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 5,
        topicsName: mongoDBTopics,
        img: 'mongoDBt.png',
      ),
      body: MyPage(
        children: [
          const H1('Query on Embedded/Nested Documents - MongoDB'),
          const P(
              'Performing MongoDB queries that target and retrieve data from embedded or nested documents within the database collections.'),
          Code(title: 'Compass', code: code1, type: 'javascript'),
          const H2('Match an Embedded/Nested Document'),
          const P(
              'To specify an equality condition on a field that is an embedded/nested document, use the query filter document { <field>: <value> } where <value> is the document to match.'),
          const P(
              'For example, the following query selects all documents where the'),
          Code(title: 'Compass', code: code2, type: 'javascript'),
          const H2('Query on Nested Field'),
          const P(
              'To specify a query condition on fields in an embedded/nested document, use dot notation ("field.nestedField").When querying using dot notation, the field and nested field must be inside quotation marks.'),
          const H3('Specify Equality Match on a Nested Field'),
          const P(
              'The following example selects all documents where the field ram nested in the storage field equals "8":'),
          Code(title: 'Compass', code: code3, type: 'javascript'),
          const H3('Specify Match using Query Operator'),
          const P(
              'The following query uses the less than operator (\$lt) on the field internal embedded in the storage field:'),
          Code(title: 'Compass', code: code4, type: 'javascript'),
          const H3('Specify AND Condition'),
          const P(
              'The following query selects all documents where the nested field internal is less than 80, the nested field ram less than 10, and the category field equals "tab:'),
          Code(title: 'Compass', code: code5, type: 'javascript'),
        ],
      ),
    );
  }
}

var code5 = '''
db.products.find({
  "storage.internal": { \$lt: 80 },
  "storage.ram": { \$lt:10 },
  "category":"tab"
})
''';
var code4 = '''
db.products.find({
  "storage.internal": { \$lt: 80 }
})
''';
var code3 = '''
db.products.find({
  "storage.ram":8
})
''';
var code2 = '''
db.products.find({
  "storage":{ "ram": 8, "internal": 64 }
})
''';
var code1 = '''
db.products.insertMany([
      {
        "title": "OnePlus Nord 3",
        "brand": "oneplus",
        "category": "mobile",
        "price": 33999,
        "qty": 25,
        "display": 6.74,
        "storage": {
          "ram": 8,
          "internal": 128
        },
        "color": ["green", "gray"]
      },
      {
        "title": "OnePlus Nord CE 3",
        "brand": "oneplus",
        "category": "mobile",
        "price": 26999,
        "qty": 10,
        "display": 6.7,
        "storage": {
          "ram": 12,
          "internal": 256
        },
        "color": ["aqua"]
      },
      {
        "title": "Samsung Galaxy M34",
        "brand": "samsung",
        "category": "mobile",
        "price": 18999,
        "qty": 72,
        "display": 6.4,
        "storage": {
          "ram": 6,
          "internal": 128
        },
        "color": ["black", "dark blue", "blue"]
      },
      {
        "title": "Samsung Galaxy M14",
        "brand": "samsung",
        "category": "mobile",
        "price": 14990,
        "qty": 8,
        "display": 6.58,
        "storage": {
          "ram": 4,
          "internal": 128
        },
        "color": ["silver", "black"]
      },
      {
        "title": "realme narzo N53",
        "brand": "realme",
        "category": "mobile",
        "price": 8999,
        "qty": 10,
        "display": 6.72,
        "storage": {
          "ram": 6,
          "internal": 128
        },
        "color": ["gold", "black"]
      },
      {
        "title": "Vivo T2x",
        "brand": "vivo",
        "category": "mobile",
        "price": 13999,
        "qty": 4,
        "display": 6.58,
        "storage": {
          "ram": 6,
          "internal": 128
        },
        "color": ["silver", "black"]
      },
      {
        "title": "Redmi Note 12",
        "brand": "xiaomi",
        "category": "mobile",
        "price": 16999,
        "qty": 25,
        "display": 6.67,
        "storage": {
          "ram": 6,
          "internal": 128
        },
        "color": ["black", "orange"]
      },
      {
        "title": "Xiaomi Pad 6",
        "brand": "xiaomi",
        "category": "tab",
        "price": 28999,
        "qty": 45,
        "display": 11,
        "storage": {
          "ram": 8,
          "internal": 256
        },
        "color": ["grey", "black", "blue"]
      },
      {
        "title": "Apple iPad Air",
        "brand": "apple",
        "category": "tab",
        "price": 68400,
        "qty": 2,
        "display": 10.9,
        "storage": {
          "ram": 8,
          "internal": 64
        },
        "color": ["grey", "pink"]
      }
    ])
''';
