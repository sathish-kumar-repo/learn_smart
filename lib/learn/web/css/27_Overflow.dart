import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class OverflowProperty extends StatefulWidget {
  const OverflowProperty({Key? key}) : super(key: key);

  @override
  State<OverflowProperty> createState() => _OverflowPropertyState();
}

class _OverflowPropertyState extends State<OverflowProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 27,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Overflow Property'),
          const P(
              'This overflow property specifies what should happen if content overflows an element\'s box. This property specifies whether to clip content or to add scrollbars when an element\'s content is too big to fit in a specified area.'),
          Code(title: 'overflow.html', code: code, type: 'html')
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
                width: 500px;
                height: 200px;
                border: 5px solid green;
                overflow: visible; /*Default*/
                overflow: hidden;
                overflow: scroll;
                overflow: auto;
                overflow-y: scroll; /*Manual*/
                overflow-x: scroll;
                
            }
            img{
                width: 100%;
            }
        </style>
    </head>
    
    <body>
        <h1>Overflow in CSS</h1>   
        <div>
            <img src="natural.webp" alt="">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsum obcaecati in enim ea nostrum eligendi eius reiciendis, illo, assumenda veniam eos aut excepturi ut, suscipit consectetur neque voluptate inventore sunt eveniet nam at dignissimos. Deleniti, odio. Assumenda suscipit id doloremque, ducimus quisquam inventore deleniti est possimus. Obcaecati ipsam quis, fugiat eum in quam dignissimos consectetur quas rerum possimus vero, quae corrupti quos reiciendis minima sed delectus illum voluptatum? Voluptatibus sunt magnam non amet quis asperiores nemo quas, facilis voluptas porro ab eum illum provident qui, architecto praesentium labore! Eaque esse aliquam exercitationem corporis reiciendis optio, tempore itaque, similique aperiam aspernatur iste cum perspiciatis maxime dignissimos eius sit qui. Ex corporis aperiam perspiciatis libero sit modi. Aut praesentium quam harum illum optio beatae rem nobis placeat autem maiores. Minima fugiat deleniti quibusdam ad, non nostrum quas autem placeat illo perspiciatis incidunt doloremque distinctio eos impedit. Id culpa aut saepe ab sapiente.
        </div>
    </body>
</html>
''';
