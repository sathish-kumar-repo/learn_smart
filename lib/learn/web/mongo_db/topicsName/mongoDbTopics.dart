import 'package:learn_smart/modal/topics.dart';
import 'package:learn_smart/learn/web/mongo_db/mb01_intro.dart';
import 'package:learn_smart/learn/web/mongo_db/mb02_create_database_and_collection.dart';
import 'package:learn_smart/learn/web/mongo_db/mb03_insert_method.dart';
import 'package:learn_smart/learn/web/mongo_db/mb04_find.dart';
import 'package:learn_smart/learn/web/mongo_db/mb05_embedded_document.dart';
import 'package:learn_smart/learn/web/mongo_db/mb06_query_on_array.dart';

List<Topics> mongoDBTopics = [
  Topics('Intro of MongoDB', const MongoDBIntro(), 'Intro'),
  Topics('Create Database and Collection', const CreateDatabaseAndCollection(),
      'MongoDB'),
  Topics('Insert Method', const InsertMethod(), 'MongoDB'),
  Topics('Retrieve Data', const FindTheDataInVariousMethod(), 'MongoDB'),
  Topics(
      'Embedded/Nested Documents', const EmbeddedOrNestedDocument(), 'MongoDB'),
  Topics('Query on Array Documents', const QueryOnArrayDocuments(), 'MongoDB'),
];
