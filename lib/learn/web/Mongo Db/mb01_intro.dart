import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/Mongo Db/topicsName/mongoDbTopics.dart';

class MongoDBIntro extends StatefulWidget {
  const MongoDBIntro({Key? key}) : super(key: key);

  @override
  State<MongoDBIntro> createState() => _MongoDBIntroState();
}

class _MongoDBIntroState extends State<MongoDBIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: mongoDBTopics,
        img: 'mongoDBt.png',
      ),
      body: const MyPage(
        children: [
          H1('Intro of MongoDb'),
          H3('What is MongoDb?'),
          Li('MongoDB is a popular open-source, NoSQL database that stores data in a document-oriented format. Unlike traditional relational databases, which store data in tables.'),
          Li('MongoDB stores data as JSON-like documents, making it more flexible and scalable. It was developed by MongoDB Inc. and first released in 2009.'),
          Li('The name "MongoDB" is derived from the word "humongous".'),
          Li('BSON documents are the format used for data stored in MongoDB.'),
          Img(name: 'historyofMongoDB.jpg'),
          Img(name: 'mongoDBHowWorks.jpg'),
          Img(name: 'structureOfMongoDBAndSql.jpg'),
          Img(name: 'aggregation.jpg'),
          Img(name: 'schemaLess.jpg'),
          Img(name: 'documentOriented.jpg'),
          Img(name: 'sharding.jpg'),
          Img(name: 'indexing.jpg'),
          Img(name: 'replication.jpg'),
          Img(name: 'termsYouKnowInMDB.jpg'),
          Img(name: 'arrayAndEmdedded.jpg'),
          Img(name: 'arrayOfEmdeddedD.jpg'),
          Img(name: 'nestedEmbeddedDocument.jpg'),
        ],
      ),
    );
  }
}
//embedded document is 'field : value'
// it is interactive shell
// avoid to give manual id in record
// query operator $
