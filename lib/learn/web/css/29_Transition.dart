import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class TransitionProperty extends StatefulWidget {
  const TransitionProperty({Key? key}) : super(key: key);

  @override
  State<TransitionProperty> createState() => _TransitionPropertyState();
}

class _TransitionPropertyState extends State<TransitionProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 29,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Transition in CSS'),
          const P(
              'CSS transitions are a powerful tool in web development that allow for smooth and animated changes in CSS property values over time. They provide a way to add dynamic and visually appealing effects to elements on a webpage without using JavaScript or other scripting languages.'),
          const Li('transition-property'),
          const Li('transition-duration'),
          const Li('transition-delay'),
          const Li('transition-timing-function'),
          const Li('transition'),
          Code(title: 'transtion.index', code: code1, type: 'html'),
          const H3('transition-timing-function'),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('units'),
                ),
                DataColumn(
                  label: ThText('Description'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('ease'),
                    ),
                    DataCell(
                      TrText('Start slow => Fast => End slowly(default)'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('linear'),
                    ),
                    DataCell(
                      TrText('Maintain same speed from start to end'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('ease-in'),
                    ),
                    DataCell(
                      TrText('Slow start and speed'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('ease-out'),
                    ),
                    DataCell(
                      TrText('Slow end'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('ease-in-out'),
                    ),
                    DataCell(
                      TrText('Slow start and end'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('step-start'),
                    ),
                    DataCell(
                      TrText(''),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('step-end'),
                    ),
                    DataCell(
                      TrText('content'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('step(4,end)'),
                    ),
                    DataCell(
                      TrText(''),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('cubic-bezier'),
                    ),
                    DataCell(
                      TrText(''),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const H3('In live Example'),
          Code(title: 'Transitionlive.index', code: code2, type: 'html')
        ],
      ),
    );
  }
}

var code2 = '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
                /*
            transition-timing-function
                ease
                Linear
                ease-in
                ease-out
                ease-in-out
            */

            @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
            *{
            margin: 0;
            padding: 0;
            }

            body{
            background: #eaeaea;
            color:#373737;
            font-family: 'Open Sans', sans-serif;
            }

            span{ 
            display: inline-block;
            margin-bottom: 20px;
            }

            .wrap{
            max-width: 750px;
            margin: 50px auto;
            }

            .container{
            padding: 15px;
            background-color: white;
            border:1px solid #aaa;
            margin-bottom: 15px;
            }

            .box{
            background-color: tomato;
            height: 70px;
            width: 75px;
            transition-property: transform;
            transition-duration: 1.8s;
            transition-delay: 0.5s;
            }
            .container:hover .box{
            transform: translateX(635px);
            }

            /*Constant Speed*/
            .linear{ transition-timing-function: linear;}
            /* Start Slow End Fast */
            .ease-in{ transition-timing-function: ease-in;}
            /* Start Fast  End Slow */
            .ease-out{ transition-timing-function: ease-out;}
            .ease-in-out{ transition-timing-function: ease-in-out;}

            .cubic{ transition-timing-function:cubic-bezier(0.075, 0.82, 0.165, 1);}
  </style>
</head>
<body>
  <div class="wrap">

    <span><b>ease </b>: specifies a transition effect with a slow start, then fast, then end slowly (this is default).</span>
    <div class="container">
      <div class="box ease"></div>
    </div>

    <span><b>linear </b>: specifies a transition effect with the same speed from start and end.</span>
    <div class="container">
      <div class="box linear"></div>
    </div>

    <span><b>ease-in</b> : specifies a transition effect with a slow start.</span>
    <div class="container">
      <div class="box ease-in"></div>
    </div>

    <span><b>ease-out</b> : specifies a transition effect with a slow end.</span>
    <div class="container">
      <div class="box ease-out"></div>
    </div>

    <span><b>ease-in-out</b> : specifies a transition effect with a slow start and end.</span>
    <div class="container">
      <div class="box ease-in-out"></div>
    </div>

    <span><b>cubic-bezier(n,n,n,n)</b> - lets you define your own values in a cubic-bezier function.</span>
    <div class="container">
      <div class="box cubic"></div>
    </div>


  </div>
</body>

</html>
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <style>
          div{
            width: 300px;
            height: 300px;
            background-color: orangered;
            /* transition-property: width,height,background;
            transition-duration: 0.5s,0.5s,1s;
            transition-timing-function: ease-in-out; 
            transition-timing-function: linear; */
    
            /* transition-property:all;
            transition-duration: 0.5s;
            transition-timing-function: ease-in-out;
            transition-delay: 0.5s; */
            border:5px solid black;
    
            /* transition:all 0.5s ease-in 1s; */
    
            transition-property:all;
            transition-duration: 2s;
            transition-timing-function:cubic-bezier(.96,.29,.48,1.13);
            transition-delay: 0.1s;
    
          }
          div:hover{
            width: 600px;
            height:600px;
            background:rebeccapurple;
            border:5px dashed red;
           }
      </style>
    </head>
    <body>
      <div></div>
    </body>
</html>
''';
