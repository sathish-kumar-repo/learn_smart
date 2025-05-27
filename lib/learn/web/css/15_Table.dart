import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class TableProperty extends StatefulWidget {
  const TableProperty({Key? key}) : super(key: key);

  @override
  State<TableProperty> createState() => _TablePropertyState();
}

class _TablePropertyState extends State<TableProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 15,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CSS Table Properties: Customizing Table Layouts'),
          const P(
              'CSS Display Table are used to create the table with the help of display table utility classes. The height of the container will be the same for all the columns when the length of content differs. In this blog, we will discuss CSS Display Table properties.'),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('Property'),
                ),
                DataColumn(
                  label: ThText('Description'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('table'),
                    ),
                    DataCell(
                      TrText(
                          'It\'s rendered as a block table, with a line break before and after the table'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('table-caption'),
                    ),
                    DataCell(
                      TrText(
                          'It\'s rendered as a table caption (replacement of caption tag)'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('table-cell'),
                    ),
                    DataCell(
                      TrText(
                          'It\'s rendered as a table cell (replacement of td(table data) tag)'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('table-column'),
                    ),
                    DataCell(
                      TrText('It\'s rendered as a column of cells '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('table-column-group'),
                    ),
                    DataCell(
                      TrText(
                          ' 	It\'s rendered as a group of one or more columns '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('table-footer-group'),
                    ),
                    DataCell(
                      TrText('It\'s rendered as a table footer row '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('table-header-group'),
                    ),
                    DataCell(
                      TrText('It\'s rendered as a table header row'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('table-row'),
                    ),
                    DataCell(
                      TrText(
                          'It\'s rendered as a table row (replacement of tr(table row) tag)'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('table-row-group'),
                    ),
                    DataCell(
                      TrText('It\'s rendered as a group of one or more rows'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const H3('Basic Table Design in CSS'),
          Code(title: 'index.html', code: code1, type: 'html'),
          const H3('HTML Tables coloring with CSS '),
          Code(title: 'index.html', code: code2, type: 'html'),
        ],
      ),
    );
  }
}

var code2 = '''
<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <title>Tutorials</title>
        <style>
            .table{
                margin-top: 100px;
                margin-left: 50px;
                /* border: 1px solid black; */
                width: 500px;

                display: table;
            }
          
            .row{ /*tr*/
                display: table-row;
            }
            .col{ /*td*/
                border: 1px solid orangered;
                padding: 10px 30px;
                display: table-cell;
            }
            .header{ /*thead*/
                    display: table-header-group;
                   font-size: 25px;
                   font-weight: bold;
                   text-align: center;
                   background-color: orangered;
                   color: white;
            }
            .footer{ /*tfoot*/
                display: table-footer-group;
            }
            .caption{
                display: table-caption;
                font-size: 30px;
                font-weight: bold;
                text-align: center;
                color: orangered;
                padding: 10px;

            } 
            .col-group{ /*colgroup*/
                display: table-column-group;
            }  
            .tbl-col{ /*col*/
                display: table-column;
            }
            .col2{
                /* Only allow two property width and backgrund-color */
                width: 30px;
                background-color: antiquewhite;
                
            }   
            .row-group{
                display: table-row-group;
                color: orange;
            }
        </style>
    </head>
    
    <body>
        <h1>Display Table in CSS</h1>
        <div class="table">
                <div class="caption">
                    Student Details
                </div>
                <div class="col-group">
                    <div class="tbl-col">col-1</div>
                    <div class="tbl-col col2">col-1</div>
                    <div class="tbl-col">col-1</div>
                </div>
                <div class="header">
                    <div class="row">
                        <div class="col">Name</div>
                        <div class="col">Age</div>
                        <div class="col">City</div>
                    </div>
                </div>
                <div class="row-group">
                <div class="row">
                    <div class="col">sam</div>
                    <div class="col">17</div>
                    <div class="col">salem</div>
                </div>
                <div class="row">
                    <div class="col">ram</div>
                    <div class="col">20</div>
                    <div class="col">chennai</div>
                </div>
                <div class="row">
                    <div class="col">ravi</div>
                    <div class="col">25</div>
                    <div class="col">salem</div>
                </div>
                <div class="row">
                    <div class="col">sri</div>
                    <div class="col">18</div>
                    <div class="col">madurai</div>
                </div>
                <div class="row">
                    <div class="col">mohan</div>
                    <div class="col">24</div>
                    <div class="col">bombay</div>
                </div>
            </div>
                <div class="footer">
                    <div class="row">
                        <div class="col">Total student</div>
                        <div class="col"></div>
                        <div class="col">5</div>
                    </div>
                </div>
            </div>
           
    </body>
</html>
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
<html>
<head>
    <title>Tutorials</title>
    <style>
            /* in single line border */
            table{
                border-collapse: collapse;
            }
            table tr:nth-of-type(even){
                background-color: greenyellow;
            }
            table tr:nth-of-type(odd){
                background-color: rgb(100, 199, 238);
            }
            table td:nth-of-type(odd){
                background-color: aqua;
            }
    </style>
</head>
    
<body>
    
    <h1>Display table in HTML</h1>   
    <table width="50%" 
    border="1px"
    cellspading="10px"
    cellspacing="10px"
     >
     <caption>Friends</caption>
     <colgroup>
    <col style="width: 150px;">
    <col style="width: 50px;">
    <col style="width: 100px;">
    </colgroup>
     <thead>
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>City</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>sathish</td>
            <td>17</td>
            <td>salem</td>
        </tr>
        <tr>
            <td>reeghan</td>
            <td>16</td>
            <td rowspan="2">madurai</td>
        </tr>
        <tr>
            <td>raja</td>
            <td>18</td>
            
        </tr>
        <tr>
            <td>jaswin</td>
            <td>18</td>
            <td>coimbature</td>
        </tr>
        <tfoot>
            <tr>
                <td colspan="3">Noyes Friends</td>
            </tr>
        </tfoot>
    </tbody>
    </table>
</body>
</html>
''';
