import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class OpacityProperty extends StatefulWidget {
  const OpacityProperty({Key? key}) : super(key: key);

  @override
  State<OpacityProperty> createState() => _OpacityPropertyState();
}

class _OpacityPropertyState extends State<OpacityProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 8,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Opacity'),
          P('This opacity CSS property sets the opacity of an element. Opacity is the degree to which content behind an element is hidden, and is the opposite of transparency'),
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
                      TrText('normal'),
                    ),
                    DataCell(
                      TrText(
                          'normal	The value of the opacity property ranges between 0 and 1'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('overlay'),
                    ),
                    DataCell(
                      TrText(
                          'This Overlay means to cover the surface of something with a coating. In other words, it is used to set one thing on the top of another'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('darken'),
                    ),
                    DataCell(
                      TrText(
                          'The opacity of the black gradient can be changed to control the amount of darkening.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Code(title: 'style.css', code: code, type: 'css'),
        ],
      ),
    );
  }
}

var code = '''
div{
    width: 800px;
    
    border: 2px solid #333;
    padding: 10px;
    /* opacity  value give from 0 to 1
    it means transparency */
    /* opacity: 0.8; */
}
img{
    opacity: 0.4;
    /* filter: alpha(opacity=90%); */
}
''';
