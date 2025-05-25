import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class ColumnProperty extends StatefulWidget {
  const ColumnProperty({Key? key}) : super(key: key);

  @override
  State<ColumnProperty> createState() => _ColumnPropertyState();
}

class _ColumnPropertyState extends State<ColumnProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 28,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Column Property'),
          const P(
              'This columns CSS shorthand property sets the number of columns to use when drawing an element\'s contents, as well as those columns\' widths. '),
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
                      TrText('column-count'),
                    ),
                    DataCell(
                      TrText(
                          'this specifies the number of columns an element should be divided into'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('column-fill'),
                    ),
                    DataCell(
                      TrText('this specifies how to fill columns'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('column-gap'),
                    ),
                    DataCell(
                      TrText('the specifies the gap between the columns'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('column-rule'),
                    ),
                    DataCell(
                      TrText(
                          'this shorthand property for setting all the column-rule-* properties'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('column-rule-color'),
                    ),
                    DataCell(
                      TrText(
                          'color the specifies the color of the rule between columns'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('column-rule-style'),
                    ),
                    DataCell(
                      TrText(
                          'the specifies the style of the rule between columns'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('column-count'),
                    ),
                    DataCell(
                      TrText(
                          'count the specifies the width of the rule between columns'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('column-rule-width'),
                    ),
                    DataCell(
                      TrText(
                          'the specifies how many columns an element should span across'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('column-width'),
                    ),
                    DataCell(
                      TrText(
                          'width 	the specifies a suggested, optimal width for the columns'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('columns'),
                    ),
                    DataCell(
                      TrText(
                          'The shorthand property for setting column-width and column-count.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const H3('Source Code'),
          Code(title: 'column.index', code: code, type: 'html')
        ],
      ),
    );
  }
}

var code = '''
<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <title>Tutorials</title>
        <style>
            div{
                text-align: justify;
                border: 5px solid black;
                padding: 10px;
                column-count: 3;
                column-width: 150px;
                column-gap: 50px;
                /* column-rule: 3px; */
                column-rule-width: 5px;
                column-rule-color: red;
                column-rule-style: solid;

                /* in single line */
                column-rule: 2px dashed red;
            }
            h2{
                column-span: none; /*default*/
                column-span: all;
            }
        </style>
    </head>
    
    <body>
        <h1>Column in CSS</h1>   
        <div>
            <h2>heading</h2>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto ipsa voluptatum reprehenderit nihil, excepturi sint quam officia consequatur ipsam error similique dolorem ab ad illum distinctio natus vero magni blanditiis ullam ratione vel labore atque libero! Ipsum debitis doloremque quod, repudiandae veritatis laborum. Impedit, sequi totam sapiente libero magni eligendi assumenda quas, velit, unde earum temporibus porro quia ipsam! Nostrum quidem aliquam repellat laborum ratione cum ullam reprehenderit sit rerum ipsum tempora corporis officia dicta quis debitis accusantium labore reiciendis consequatur quam voluptatibus nulla, repudiandae nihil? Voluptas sed dicta consequatur magnam ab autem iure ipsa corrupti aut, hic facilis molestias illo molestiae quis eaque pariatur doloremque adipisci excepturi quae similique ad. Magni commodi suscipit itaque. Aut non repudiandae itaque inventore nisi cum? Ab, modi hic quod, veritatis vel molestias voluptate aperiam eligendi in temporibus eos quam iste soluta quaerat, accusantium est. Sed qui maiores sapiente praesentium deserunt molestiae dolorum a.
        </div>
    </body>
</html>
''';
