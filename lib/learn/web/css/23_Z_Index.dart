import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class Z_IndexProperty extends StatefulWidget {
  const Z_IndexProperty({Key? key}) : super(key: key);

  @override
  State<Z_IndexProperty> createState() => _Z_IndexPropertyState();
}

class _Z_IndexPropertyState extends State<Z_IndexProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 23,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Z Index Property'),
          const P(
              'This z-index is a CSS property that defines the order of overlapping HTML elements. Elements with a higher index will be placed on top of elements with a lower index. '),
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
                      TrText('auto'),
                    ),
                    DataCell(
                      TrText(
                          'The sets the stack order equal to its parents. This is default. '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('number'),
                    ),
                    DataCell(
                      TrText(
                          'This sets the stack order of the element.Negative numbers are allowed.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('initial'),
                    ),
                    DataCell(
                      TrText('The sets this property to its default value.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('inherit'),
                    ),
                    DataCell(
                      TrText('Inherits this property from its parent element.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const H3('In Conclusion'),
          const Li('Z-index is high that is first'),
          const Li('Z-index is 0 that is last'),
          const Li('Z-index is -ve that is outside the parent'),
          Code(title: 'z-index.html', code: code, type: 'html'),
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
    <title>Z-index</title>
    <style>
        /* this code is run some of them command please */
        /* Z-index is high that is first */
        /* Z-index is 0 that is last */
        /* Z-index is -ve that is outside the parent */
        .box{
            width: 800px;
            height: 500px;
            background: #ccc;
            position: relative;
        }
        .box div{
            height: 200px;
            width: 200px;
            position: absolute;

        }
        .box-1{
            background: teal;
            color: white;
            top:100px;
            left: 50px;
            z-index: 2; /*top*/
        }
        .box-2{
            background: orangered;
            color: white;
            top:150px;
            left: 100px;
            z-index: -1;/*outside the parent*/
        }
        .box-3{
            background: purple;
            color: white;
            top:200px;
            left: 150px;
            z-index: 0;/*last*/
        }
    </style>
</head>
<body>
    <h1>Z-index in CSS</h1>
    <div class="box">
        <div class="box-1">Box-1</div>
        <div class="box-2">Box-2</div>
        <div class="box-3">Box-3</div>
    </div>
</body>
</html>
''';
