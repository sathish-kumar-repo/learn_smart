import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/Mongo Db/topicsName/mongoDbTopics.dart';

class FindTheDataInVariousMethod extends StatefulWidget {
  const FindTheDataInVariousMethod({Key? key}) : super(key: key);

  @override
  State<FindTheDataInVariousMethod> createState() =>
      _FindTheDataInVariousMethodState();
}

class _FindTheDataInVariousMethodState
    extends State<FindTheDataInVariousMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 4,
        topicsName: mongoDBTopics,
        img: 'mongoDBt.png',
      ),
      body: MyPage(
        children: [
          const H1('Retrieve data'),
          const P(
              'Executing MongoDB commands to retrieve specific data from documents in the database collections using query operations.'),
          const H2('Sample Dataset'),
          Code(title: 'Compass', code: code1, type: 'javascript'),
          const H2('Select All Documents in a Collection'),
          const P(
              'To select all documents in the collection, pass an empty document as the query filter parameter in find function'),
          Code(title: 'Compass', code: code2, type: 'javascript'),
          const P(
              'This operation uses a filter predicate of {}, which corresponds to the following SQL statement:'),
          Code(title: 'Compass', code: code3, type: 'javascript'),
          const H2('Specify Equality Condition'),
          const P(
              'The following example selects from the products collection all documents where the brand equals "oneplus":'),
          Code(title: 'Compass', code: code4, type: 'javascript'),
          const P(
              'This operation uses a filter predicate of { brand: "oneplus" }, which corresponds to the following SQL statement:'),
          Code(title: 'Compass', code: code5, type: 'javascript'),
          const H2('Specify Conditions Using Query Operators'),
          const P(
              'The following example retrieves all documents from the products collection where brand equals either "apple" or "realme":'),
          Code(title: 'Compass', code: code6, type: 'javascript'),
          const P(
              'The operation uses a filter predicate of {"brand":{\$in:["apple","realme"]}}, which corresponds to the following SQL statement:'),
          Code(title: 'Compass', code: code7, type: 'javascript'),
          const H2('Specify AND Conditions'),
          const P(
              'The following example retrieves all documents in the products collection where the category equals "mobile" and qty is less than (\$lt) 20:'),
          Code(title: 'Compass', code: code8, type: 'javascript'),
          const P(
              'The operation uses a filter predicate of { "category":"mobile", "qty":{\$lt:20} } which corresponds to the following SQL statement:'),
          Code(title: 'Compass', code: code9, type: 'javascript'),
          const H2('Specify OR Conditions'),
          const P(
              'The following example retrieves all documents in the collection where the category equals "mobile" or qty is less than (\$lt) 20:'),
          Code(title: 'Compass', code: code10, type: 'javascript'),
          const P(
              'The operation uses a filter predicate of { \$or:[ {"category":"mobile"}, {"qty":{\$lt:20}} ] } which corresponds to the following SQL statement:'),
          Code(title: 'Compass', code: code11, type: 'javascript'),
          const H2('Specify AND as well as OR Conditions'),
          const P(
              'The following example selects all documents in the collection where the category equals "mobile" and either qty is less than (\$lt) 10 or title starts with the character r:'),
          Code(title: 'Compass', code: code12, type: 'javascript'),
          const P('Query can be rewrite using \$regex'),
          Code(title: 'Compass', code: code13, type: 'javascript'),
          const P('The operation uses a filter predicate of:'),
          Code(title: 'Compass', code: code14, type: 'javascript'),
          const P('which corresponds to the following SQL statement:'),
          Code(title: 'Compass', code: code15, type: 'javascript'),
        ],
      ),
    );
  }
}

var code15 = '''
SELECT * FROM products WHERE category = "mobile" AND ( qty < 10 OR item LIKE "r%")
''';
var code14 = '''
{
    category: 'mobile',
    \$or: [
      { qty: { \$lt: 10 } }, { title: { \$regex: '^r' } }
    ]
}
''';
var code13 = '''
db.products.find({
  "category":"mobile",
  \$or:[
    {"qty":{\$lt:10}},
    {"title":{\$regex:'^r'}}
  ]
})
''';
var code12 = '''
db.products.find({
  "category":"mobile",
  \$or:[
    {"qty":{\$lt:10}},
    {"title":/^r/}
  ]
})
''';
var code11 = '''
SELECT * FROM products WHERE category="mobile" or qty<20;
''';
var code10 = '''
db.products.find({
\$or:[
    {"category":"mobile"},
    {"qty":{\$lt:20}}
  ]
})
''';
var code9 = '''
SELECT * FROM products WHERE category="mobile" AND qty<20;
''';
var code8 = '''
db.products.find({
    "category":"mobile",
    "qty":{\$lt:20}
})
''';
var code7 = '''
SELECT * FROM products WHERE brand in ("apple", "realme")
''';
var code6 = '''
db.products.find({"brand":{\$in:["apple","realme"]}})
''';
var code5 = '''
SELECT * FROM products WHERE brand = "oneplus"
''';
var code4 = '''
db.products.find({"brand":"oneplus"})
''';
var code3 = '''
SELECT * FROM products
''';
var code2 = '''
db.products.find({})
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
