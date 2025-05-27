import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Concepts/topicName/flutterConceptsTopic.dart';

class FlutterConceptApiFetch extends StatefulWidget {
  const FlutterConceptApiFetch({Key? key}) : super(key: key);

  @override
  State<FlutterConceptApiFetch> createState() => _FlutterConceptApiFetchState();
}

class _FlutterConceptApiFetchState extends State<FlutterConceptApiFetch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: flutterConceptsTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Fetch Data from Internet'),
          const H3('Eg - 1'),
          const P(
              'In this eg show how to get data and it convert to Object with Future builder'),
          Link(
              'https://github.com/App-sky-loom/flutter_api/tree/main/covid_19'),
          const H3('Eg - 2'),
          const P(
              'In this eg show how to get data and it convert to List of Object'),
          Link(
              'https://github.com/App-sky-loom/flutter_api/tree/main/api_fetch_pratice_products'),
        ],
      ),
    );
  }
}
