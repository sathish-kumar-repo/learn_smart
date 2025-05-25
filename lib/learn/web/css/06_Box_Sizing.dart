import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class BoxSizingProperty extends StatefulWidget {
  const BoxSizingProperty({Key? key}) : super(key: key);

  @override
  State<BoxSizingProperty> createState() => _BoxSizingPropertyState();
}

class _BoxSizingPropertyState extends State<BoxSizingProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 5,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Box Sizing'),
          Img(name: 'boxsize1.jpg'),
          Img(name: 'boxsize2.jpg'),
          P('This box-sizing CSS property sets how the total width and height of an element is calculated. '),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('Values'),
                ),
                DataColumn(
                  label: ThText('used for'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('box-sizing'),
                    ),
                    DataCell(
                      TrText(
                          'This defines how the width and height of an element are calculated, should they include padding and borders, or not.'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('content-box'),
                    ),
                    DataCell(
                      TrText(
                          'This width and height properties and min/max properties includes only the content. Border and padding are not included '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('border-box'),
                    ),
                    DataCell(
                      TrText(
                          'This width and height properties and min/max properties includes content, padding and border.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Code(title: 'style.css', code: code1, type: 'css'),
        ],
      ),
    );
  }
}

var code1 = '''
div{
    width: 300px;
    height: 300px;
    background-color: aliceblue;
    padding: 10px;
    border: 10px solid black;
    box-sizing: border-box;
}
''';
