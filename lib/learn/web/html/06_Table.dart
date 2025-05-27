import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/HTML/topicName/HTMLTopics.dart';

class TableTagHTMl extends StatefulWidget {
  const TableTagHTMl({Key? key}) : super(key: key);

  @override
  State<TableTagHTMl> createState() => _TableTagHTMlState();
}

class _TableTagHTMlState extends State<TableTagHTMl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 6,
        topicsName: hTMLTopics,
        img: 'html.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Table Tag'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code, type: 'html')
        ],
      ),
    );
  }
}

var code = '''
<html>
<head>
    <title>Table tag</title>
</head>
<body>
    <h1>Table tag</h1>
    <table border="5px" cellpadding = "10px" cellspacing = "10px">
        <tr>
            <td colspan="2"> Student List</td>
        </tr>
        <tr>
            <th>SNO</th>
            <th>Name</th>
        </tr>
        <tr>
            <td>sathish</td>
            <td>17</td>
        </tr>
    </table>
    <h1>OtherTable</h1>
    <table border="2px" cellpadding = "10px" cellspacing ="10px">
        <tr>
            <td colspan="6"><h1>School Time Table</h1></td>

        </tr>
        <tr>
            <th>DAYS</th>
            <th>1</th>
            <th>2</th>
            <th rowspan="6">B<br>R<br>E<br>A<br>K</th>
            <th>3</th>
            <th>4</th>
        </tr>
        <tr>
            <td>MON</td>
            <td>ENG</td>
            <td>TAM</td>
            <td>MAT</td>
            <td>SCI</td>
        </tr>
        <tr>
            <td>TUE</td>
            <td>ENG</td>
            <td>TAM</td>
            <td>MAT</td>
            <td>SCI</td>
        </tr>
        <tr>
            <td>WED</td>
            <td>ENG</td>
            <td>TAM</td>
            <td>MAT</td>
            <td>SCI</td>
        </tr>
        <tr>
            <td>THU</td>
            <td>ENG</td>
            <td>TAM</td>
            <td>MAT</td>
            <td>SCI</td>
        </tr>
        <tr>
            <td>FRI</td>
            <td>ENG</td>
            <td>TAM</td>
            <td>MAT</td>
            <td>SCI</td>
        </tr>

    </table>
</body>
</html>
''';
