import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/Mongo Db/topicsName/mongoDbTopics.dart';

class QueryOnArrayDocuments extends StatefulWidget {
  const QueryOnArrayDocuments({Key? key}) : super(key: key);

  @override
  State<QueryOnArrayDocuments> createState() => _QueryOnArrayDocumentsState();
}

class _QueryOnArrayDocumentsState extends State<QueryOnArrayDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 6,
        topicsName: mongoDBTopics,
        img: 'mongoDBt.png',
      ),
      body: MyPage(
        children: [
          const H1('Query on Array Documents - MongoDB'),
          const P(
              'Performing queries to retrieve data from arrays within MongoDB documents using array operators and conditions.This page provides examples of query operations on array fields using the Collection.find() method in the MongoDB'),
          const H2('Sample DataSet'),
          Code(title: 'Compass', code: code1, type: 'javascript'),
          const P(
              'The examples on this page use the products collection. Connect to a test database in your MongoDB instance then create the products collection'),
          const H2('Match an Array'),
          const P(
              'The following example queries for all documents where the field tags value is an array with exactly two elements, "silver" and "black", in the specified order'),
          Code(title: 'Compass', code: code2, type: 'javascript'),
          const P(
              'If, instead, you wish to find an array that contains both the elements "silver" and "black", without regard to order or other elements in the array, use the \$all operator:'),
          Code(title: 'Compass', code: code3, type: 'javascript'),
          const H2('Query an Array for an Element'),
          const P(
              'The following example queries for all documents where color is an array that contains the string "grey" as one of its elements:'),
          Code(title: 'Compass', code: code4, type: 'javascript'),
          const P(
              'For example, the following operation queries for all documents where the array camera contains at least one element whose value is greater than 60.'),
          Code(title: 'Compass', code: code5, type: 'javascript'),
          const H2('Specify Multiple Conditions for Array Elements'),
          const P(
              'The following example queries for documents where the camera array contains elements that in some combination satisfy the query conditions;'),
          Code(title: 'Compass', code: code6, type: 'javascript'),
          const H2('Query for an Array Element that Meets Multiple Criteria'),
          const P(
              'Use \$elemMatch operator to specify multiple criteria on the elements of an array such that at least one array element satisfies all the specified criteria.'),
          const P(
              'The following example queries for documents where the camera array contains at least one element that is both greater than (\$gt) 64 and less than (\$lt) 70:'),
          Code(title: 'Compass', code: code7, type: 'javascript'),
          const H2('Query for an Element by the Array Index Position'),
          const P(
              'Using dot notation, you can specify query conditions for an element at a particular index or position of the array. The array uses zero-based indexing.When querying using dot notation, the field and nested field must be inside quotation marks.'),
          const P(
              'The following example queries for all documents where the second element in the array camera is greater than 10:'),
          Code(title: 'Compass', code: code8, type: 'javascript'),
          const H2('Query an Array by Array Length'),
          const P(
              'Use the \$size operator to query for arrays by number of elements. For example, the following selects documents where the array color has 3 elements.'),
          Code(title: 'Compass', code: code9, type: 'javascript'),
        ],
      ),
    );
  }
}

var code9 = '''
db.products.find({
  "color": { \$size: 3 } 
});
''';
var code8 = '''
db.products.find({
  "camera.1": { \$gt: 10 } 
});
''';
var code7 = '''
db.products.find({ 
  "camera": { \$elemMatch: { \$gt: 64, \$lt:70 } } 
});
''';
var code6 = '''
db.products.find({ 
"camera": { \$gt: 10, \$lt: 20 } 
});
''';
var code5 = '''
db.products.find({
  "camera": { \$gt: 60 }
});
''';
var code4 = '''
db.products.find({
  "color":"grey"
});
''';
var code3 = '''
db.products.find({
  "color":{\$all : ['silver','black']}
});
''';
var code2 = '''
db.products.find({
  "color": ['silver','black']
});
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
        "color": ["green", "gray"],
        "camera":[50,8]
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
        "color": ["aqua"],
        "camera":[48,6]
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
        "color": ["black","silver", "blue"],
        "camera":[60,10]
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
        "color": ["silver","black"],
        "camera":[48,8]
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
        "color": ["gold","black"],
        "camera":[50,8]
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
        "color": ["silver","black"],
        "camera":[60,12]
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
        "color": ["black","orange"],
        "camera":[65,12]
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
        "color": ["grey","black","blue"],
        "camera":[42,6]
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
        "color": ["grey","pink"],
        "camera":[12,6]        
      }
    ])
''';
