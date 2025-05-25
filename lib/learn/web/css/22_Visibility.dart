import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class VisibilityProperty extends StatefulWidget {
  const VisibilityProperty({Key? key}) : super(key: key);

  @override
  State<VisibilityProperty> createState() => _VisibilityPropertyState();
}

class _VisibilityPropertyState extends State<VisibilityProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 22,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Visibility Property'),
          const P(
              'This visibility CSS property shows or hides an element without changing the layout of a document. '),
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
                      TrText('visible'),
                    ),
                    DataCell(
                      TrText(
                          'This visibility CSS property shows or hides an element without changing the layout of a document. '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('hidden'),
                    ),
                    DataCell(
                      TrText(
                          'This element box is invisible (not drawn), but still affects layout as normal.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('collapse'),
                    ),
                    DataCell(
                      TrText(
                          'The one only effects table rows (<tr>), row groups (like <thead>), columns (<col>), column groups (<colgroup>), or elements made to be that way via display).'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('initial'),
                    ),
                    DataCell(
                      TrText(
                          'It is used to set this property to its default value'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('inherit'),
                    ),
                    DataCell(
                      TrText(
                          'This default value. This simply causes the element to inherit the value of its parent.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Code(title: 'visibility.index', code: code, type: 'html')
        ],
      ),
    );
  }
}

var code = '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Visiblity in CSS</title>
  <style>
    p{
      
      visibility: visible;
      visibility: hidden;

    }
    .first{
      visibility: collapse;
    }
    .first-td{
      visibility: collapse;
    }
  </style>
</head>
<body>
  <h2>Visibility in CSS</h2>
  <table border="1px">
    <tr class="first">
      <td>Data-1</td>
      <td>Data-1</td>
      <td>Data-1</td>
    </tr>
    <tr>
      <td>Data-2</td>
      <td>Data-2</td>
      <td>Data-2</td>
    </tr>
    <tr>
      <td class="first-td">Data-3</td>
      <td>Data-3</td>
      <td>Data-3</td>
    </tr>
  </table>
  <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis, quasi beatae accusantium cumque sapiente hic eaque in aspernatur reprehenderit ducimus vitae aut, est, iure ex magnam. Delectus exercitationem mollitia deleniti, voluptas corporis quos sapiente voluptatibus nam assumenda aperiam labore, placeat id, provident voluptate cupiditate iusto unde! Ipsa nam sint repellat consequatur earum doloremque animi, ducimus quae obcaecati voluptas mollitia nisi ex! Asperiores illo odio cumque ullam quos ducimus, aspernatur velit, assumenda recusandae blanditiis molestiae! Ipsum omnis ex sequi beatae temporibus vitae commodi cupiditate! Laborum temporibus tempore sint vitae ipsam, aut voluptatem ducimus aliquid nostrum explicabo iure quam fugit laudantium est?</p>
  <h3>This is Heading 3</h3>
</body>
</html>
''';
