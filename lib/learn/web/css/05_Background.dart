import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class BackgroundProperty extends StatefulWidget {
  const BackgroundProperty({Key? key}) : super(key: key);

  @override
  State<BackgroundProperty> createState() => _BackgroundPropertyState();
}

class _BackgroundPropertyState extends State<BackgroundProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 6,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Background Properties'),
          const H2('Img'),
          const Img(name: 'bg.jpg'),
          const P(
              'The CSS background properties are used to define the background effects for elements. '),
          const P(
              'In these chapters, you will learn about the following CSS background properties:'),
          const Li('Background Color'),
          const Li('Background Image'),
          const Li('Background Repeat'),
          const Li('Background Attachment'),
          const Li('Background Position'),
          const H3('Background Color'),
          const P(
              'The background-color property specifies the background color of an element.'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H3('Background Image'),
          const P(
              'The background-image property specifies an image to use as the background of an element.'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const P(
              'By default, the image is repeated so it covers the entire element.'),
          const H3('Background Repeat'),
          const P(
              'By default, the background-image property repeats an image both horizontally and vertically.'),
          const P(
              'Some images should be repeated only horizontally or vertically, or they will look strange, like this:'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H3('Background No-Repeat'),
          const P(
              'Showing the background image only once is also specified by the background-repeat property:'),
          Code(title: 'style.css', code: code4, type: 'css'),
          const H3('Background Position'),
          const P(
              'The background-position property is used to specify the position of the background image.'),
          Code(title: 'style.css', code: code5, type: 'css'),
          const H3('Background Attachment'),
          const P(
              'The background-attachment property specifies whether the background image should scroll or be fixed (will not scroll with the rest of the page):'),
          Code(title: 'index.html', code: code6, type: 'html'),
          const H3('Exploring Background Size'),
          const P(
              'This property in CSS is used to set the size of the background image. The image may be positioned left from its natural size, stretched, or constrained to fit in the available space '),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('value'),
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
                          'It is used to set the background-size property to its default value. It is used to display the background-image to its original size.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('cover'),
                    ),
                    DataCell(
                      TrText(
                          'set the origin of the background image to the padding edge in the upper left corner. '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('contain'),
                    ),
                    DataCell(
                      TrText(
                          'set the image to the border of the body of the webpage i.e. the absolute upper left corner.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('length'),
                    ),
                    DataCell(
                      TrText(
                          'It is used to set the width and height of the background-image. The first value indicates the width, and the second value indicates the height of the background image in terms of px, pt, em, etc. If any value is not given then it is set to auto.(ex : background-size: 500px 550px) '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('percentage'),
                    ),
                    DataCell(
                      TrText(
                          'It is used to set the width and height in terms of percentage as related to the parent element. The first value indicates the width, and the second value indicates the height of the background image.(ex : background-size: 80% 75%) '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('cover'),
                    ),
                    DataCell(
                      TrText(
                          'It is used to resize the background image to cover a whole container element.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Code(title: 'index.html', code: code7, type: 'html'),
          const H3('Exploring Background attachment'),
          const P(
              'The background-attachment property sets whether a background image scrolls with the rest of the page, or is fixed. '),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('Activity'),
                ),
                DataColumn(
                  label: ThText('Name'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('scroll'),
                    ),
                    DataCell(
                      TrText(
                          'The background is fixed relative to the element itself and does not scroll with its contents.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('fixed'),
                    ),
                    DataCell(
                      TrText(
                          'The background is fixed relative to the viewport. Even if an element has a scrolling mechanism, the background doesn\'t move with the element.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('local'),
                    ),
                    DataCell(
                      TrText(
                          'The background is fixed relative to the element\'s contents. If the element has a scrolling mechanism, the background scrolls with the element\'s contents, and the background painting area and background positioning area are relative to the scrollable area of the element rather than to the border framing them.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Code(title: 'index.html', code: code8, type: 'html'),
          const H3('Background - Origin'),
          const P(
              'This property is used to set the origin of the image in the background. By default, this property sets the background image origin to the upper-left corner of the screen/webpage. '),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('value'),
                ),
                DataColumn(
                  label: ThText('used for'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('initial'),
                    ),
                    DataCell(
                      TrText(
                          'setting the background origin to the padding edge in the upper left corner.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('padding-box'),
                    ),
                    DataCell(
                      TrText(
                          'set the origin of the background image to the padding edge in the upper left corner. '),
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
                          'set the image to the border of the body of the webpage i.e. the absolute upper left corner.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('content-box'),
                    ),
                    DataCell(
                      TrText(
                          'set the origin of the background according to the content of the division/body wherever the property is being used. '),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Code(title: 'index.html', code: code9, type: 'html'),
          const H3('Background - Clip'),
          const P(
              'The background-clip property defines how far the background (color or image) should extend within an element. '),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('value'),
                ),
                DataColumn(
                  label: ThText('Used for'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('border-box'),
                    ),
                    DataCell(
                      TrText(
                          'The background extends to the outside edge of the border '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('padding-box'),
                    ),
                    DataCell(
                      TrText(
                          'The background extends to the outside edge of the padding. No background is drawn beneath the border.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('content-box'),
                    ),
                    DataCell(
                      TrText(
                          'The background is painted within the content box. '),
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
                          'In this mode, the background-color is mixed with the background-image to reflect the lightness or darkness of the backdrop.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('text'),
                    ),
                    DataCell(
                      TrText(
                          'The background is clipped to the foreground text.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Code(title: 'index.html', code: code10, type: 'html'),
          const H3('Gradient Background in CSS'),
          const P(
              'While declaring the a solid color uses background-color property in CSS, gradients use background-image. The shorthand background property will know what you mean if you declare one or the other. '),
          const H4('Type of Gradients'),
          const Li('linear-gradient'),
          const Li('repeating-linear-gradient'),
          const Li('radial-gradient'),
          const Li('repeating-radial-gradient'),
          const Li('conic-gradient'),
          const Li('repeating-conic-gradient'),
          const H4('linear-gradient'),
          const P(
              'The linear-gradient() creates an image consisting of a progressive transition between two or more colors along a straight line.'),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('Values'),
                ),
                DataColumn(
                  label: ThText('Method'),
                ),
                DataColumn(
                  label: ThText('Description'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('side-or-corner'),
                    ),
                    DataCell(
                      TrText('to top, to bottom, to left, to right, angle '),
                    ),
                    DataCell(
                      TrText(
                          'This values are equivalent to the angles 0deg, 180deg, 270deg, and 90deg, respectively. The other values are translated into an angle.The gradient line\'s angle of direction. A value of 0deg is equivalent to to top; increasing values rotate clockwise from there.'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('linear-color-stop'),
                    ),
                    DataCell(
                      TrText('color values, percentage'),
                    ),
                    DataCell(
                      TrText(
                          'A color-stop\'s color value, followed by one or two optional stop positions, (each being either a percentage or a length along the gradient\'s axis).'),
                    )
                  ],
                ),
              ],
            ),
          ),
          Code(title: 'style.css', code: code11, type: 'css'),
          const H4('repeating-linear-gradient'),
          const P(
              'Its creates an image consisting of repeating linear gradients. It is similar to linear-gradient() and takes the same arguments, but it repeats the color stops infinitely in all directions so as to cover its entire container. '),
          Code(title: 'style.css', code: code12, type: 'css'),
          const H4('radial-gradient'),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('Values'),
                ),
                DataColumn(
                  label: ThText('Method'),
                ),
                DataColumn(
                  label: ThText('Description'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('position'),
                    ),
                    DataCell(
                      TrText('red 0, blue, green 100% '),
                    ),
                    DataCell(
                      TrText(
                          'The position of the gradient, interpreted in the same way as background-position or transform-origin. If unspecified, it defaults to center.'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('ending-shape'),
                    ),
                    DataCell(
                      TrText(
                          'radial-gradient(circle at center, red 0, blue, green 100%)'),
                    ),
                    DataCell(
                      TrText(
                          'The value can be circle or ellipse, If unspecified, it defaults to ellipse.'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('size'),
                    ),
                    DataCell(
                      TrText(
                          'radial-gradient(closest-side, red 0, blue, green 100%)'),
                    ),
                    DataCell(
                      TrText(
                          'It can be given explicitly or by keyword. For the purpose of the keyword definitions, consider the gradient box edges as extending infinitely in both directions, rather than being finite line segments.'),
                    )
                  ],
                ),
              ],
            ),
          ),
          Code(title: 'style.css', code: code13, type: 'css'),
          const H5('Keywords of radial-gradient'),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('Keyword'),
                ),
                DataColumn(
                  label: ThText('Description'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('closest-side'),
                    ),
                    DataCell(
                      TrText(
                          'The gradient\'s ending shape meets the side of the box closest to its center'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('closest-corner'),
                    ),
                    DataCell(
                      TrText(
                          'The gradient\'s ending shape is sized so that it exactly meets the closest corner of the box from its cente'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('farthest-side'),
                    ),
                    DataCell(
                      TrText(
                          'Similar to closest-side, except the ending shape is sized to meet the side of the box farthest from its center '),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('farthest-corner'),
                    ),
                    DataCell(
                      TrText(
                          'The default value, the gradient\'s ending shape is sized so that it exactly meets the farthest corner of the box from its center.'),
                    )
                  ],
                ),
              ],
            ),
          ),
          const H4('repeating-radial-gradient'),
          Code(title: 'style.css', code: code14, type: 'css'),
          const P(
              'creates an image consisting of repeating gradients that radiate from an origin. It is similar to radial-gradient() and takes the same arguments, but it repeats the color stops infinitely in all directions so as to cover its entire container, similar to repeating-linear-gradient().'),
          const H4('conic-gradient'),
          const P(
              'creates an image consisting of a gradient with color transitions rotated around a center point.'),
          const H5('Values'),
          const Li(
              'angle - Preceded by the from keyterm, and taking an angle as its value, defines the gradient rotation in clockwise direction.'),
          const Li(
              'position - Using the same length, order and keyterm values as the background-position property, the position defines center of the gradient.'),
          const Li(
              'angular-color-stop - A color value, followed by one or two optional stop positions.'),
          const Li(
              'color-hint - The length defines at which point between two color stops the gradient color should reach the midpoint of the color transition.'),
          Code(title: 'style.css', code: code15, type: 'css'),
          const H4('repeating-conic-gradient'),
          const P(
              'creates an image consisting of a repeating gradient with color transitions rotated around a center point.'),
          Code(title: 'style.css', code: code16, type: 'css'),
          const H3('Background- Blend'),
          const P(
              'This background-blend-mode property defines the blending mode of each background layer color and/or image. '),
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
                          'This is the default value. It sets the blending mode to normal. '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('multiply'),
                    ),
                    DataCell(
                      TrText('This leads to a darker image than before. '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('screen'),
                    ),
                    DataCell(
                      TrText(
                          'In this mode both image and color is inverted, multiplied and then inverted. again. '),
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
                          'In this mode, the background-color is mixed with the background-image to reflect the lightness or darkness of the backdrop.'),
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
                          'In this mode if the background-image is darker than the background-color then the image is replaced'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('lighten'),
                    ),
                    DataCell(
                      TrText(
                          'In this mode if the background-image is lighter than the background-color then the image is replaced.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('color-dodge'),
                    ),
                    DataCell(
                      TrText(
                          'In this mode, the background-color is divided by the inverse of the background-image. This is very similar to the screen blend mode. '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('color'),
                    ),
                    DataCell(
                      TrText('Sets the blending mode to color'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('luminosity'),
                    ),
                    DataCell(
                      TrText(
                          'In this mode, the luminosity of the top color is preserved whilst using the saturation and hue of the background-color. '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('saturation'),
                    ),
                    DataCell(
                      TrText(
                          'This mode keeps the saturation of the background-image whilst mixing the hue and luminosity of the background color.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Difference'),
                    ),
                    DataCell(
                      TrText(
                          'This mode is the result by subtracting the darker color of the background-image and the background-color from the lightest one. Often the image will have very high contrast. '),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Code(title: 'style.css', code: code17, type: 'css'),
        ],
      ),
    );
  }
}

var code17 = '''
div{
    width: 500px;
    height: 500px;
    border: 2px black;
    background-image: linear-gradient(red,yellow),url(shoe.jpeg);
    background-size: cover;
    /* Default value noraml */
    background-blend-mode: normal;
    background-blend-mode: screen;
    /* mostly used overlay */
    background-blend-mode: overlay;
    background-blend-mode: darken;
    background-blend-mode: hard-light;
    background-blend-mode: soft-light;
    background-blend-mode: multiply;
    background-blend-mode: difference;
    background-blend-mode: exclusion;
    background-blend-mode: hue;
    background-blend-mode: color-burn;
    background-blend-mode: color-dodge;
    background-blend-mode: color;
    background-blend-mode: lighten;
    background-blend-mode: luminosity;
    background-blend-mode: saturation;
}  
''';
var code16 = '''
background: conic-gradient(red,yellow,black);
border-radius: 50%;
background: conic-gradient(from 90deg,red,yellow,black);
background: conic-gradient(red,yellow,black);
background: conic-gradient(red 0deg,red 90deg,yellow 90deg,yellow 180deg, black 180deg,black 270deg);
''';
var code15 = '''
background: conic-gradient(red,yellow,black);
border-radius: 50%;
background: conic-gradient(from 90deg,red,yellow,black);
background: conic-gradient(red,yellow,black);
background: conic-gradient(red 0deg,red 90deg,yellow 90deg,yellow 180deg, black 180deg,black 270deg);
''';
var code14 = '''
background: repeating-radial-gradient(red,orange,black);
background: repeating-radial-gradient(red ,orange 10%,black 15%);
''';
var code13 = '''
/* In circle or ellipse form  */
background: radial-gradient(red,yellow);
background: radial-gradient(red,yellow,green);
background: radial-gradient(red 5%,yellow 15%,green 60%);
background: radial-gradient(circle,red 5%,yellow 15%,green 60%);

background: radial-gradient(closest-side at 50% 50%,red 5%,yellow 15%,green 60%);
background: radial-gradient(closest-side at 80% 50%,red 5%,yellow 15%,green 60%);
background: radial-gradient(closest-side at 80% 80%,red 5%,yellow 15%,green 60%);

background: radial-gradient(farthest-side at 80% 80%,red 5%,yellow 15%,green 60%);

background: radial-gradient(closest-corner at 80% 80%,red 5%,yellow 15%,green 60%);
background: radial-gradient(farthest-corner at 80% 80%,red 5%,yellow 15%,green 60%);
''';
var code12 = '''
background: repeating-linear-gradient(to top,red 20%,orange 30%);
''';
var code11 = '''
background:linear-gradient(red,blue) ;
background:linear-gradient(red,blue,black) ;

background:linear-gradient(to right,red,blue,black) ;
background:linear-gradient(to left,red,blue,black) ;
background:linear-gradient(to top,red,blue,black) ;
background:linear-gradient(to bottom,red,blue,black) ;

background:linear-gradient(to bottom right,red,blue,black) ;
background:linear-gradient(to bottom left,red,blue,black) ;
background:linear-gradient(to top left,red,blue,black) ;
background:linear-gradient(to top right,red,blue,black) ;

background:linear-gradient(45deg,red,blue,black) ;
background:linear-gradient(-45deg,red,blue,black) ;

background:linear-gradient(-45deg,red 50%,blue 20%) ;
''';
var code10 = '''
<!DOCTYPE html>
<html lang="en">
<head>
<title>Tutor Joes</title>
<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<style>
        div{
            width: 800px;
            height: 400px;
            background-image: url(natural.webp);
            background-repeat: no-repeat;
            background-size: cover;
            font-size: 100px;
            font-family: impact;
            text-align: center;
            color: transparent;
            background-clip: text;
            /* For chrome browser use webkit prefix use pannanum in case  */
            -webkit-background-clip: text;
        }
    </style>
</head>
<body>
  <h1>Background Clip in CSS</h1>
  <div>
  sathish kumar 
  
  </div>
</body>
</html>
''';
var code9 = '''
<!DOCTYPE html>
<html lang="en">
<head>
<title>Tutor Joes</title>
<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<style>
        body{
            background: aliceblue;
        }
        div{
            background: white;
            width: 800px;
            height: 600px;
            padding: 25px;
            border: 20px dashed black;
            background-image: url(natural.webp);
            background-repeat: no-repeat;
            /* padding-box is Default */
            background-origin: padding-box;
            background-origin: content-box;
            background-origin: border-box;
        }
    </style>
</head>
<body>
    <h1>Background Origin in CSS</h1>
    <div>
    <p>
      Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
      placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
      veniam possimus? Facilis corporis quae at alias esse optio sint 
      dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
      placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
      veniam possimus? Facilis corporis quae at alias esse optio sint 
      dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
    </p>
   
</div>
</body>
</html>
''';
var code8 = '''
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <title>Tutor Joes</title>
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
    <style>
            div{
                color: khaki;
                font-size: 25px;
                font-weight: bold;
                padding: 10px;
                background: aliceblue url(natural.webp) no-repeat;
                background-size: cover;
                /* Scroll - default */
                background-attachment: scroll;
                background-attachment: fixed;
                
            }
        </style>
    </head>
    <body>
        <h1>Background attachment in CSS</h1>
        <div>
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
        </p>
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
        </p>
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
        </p>
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
        </p>
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
        </p>
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
        </p>
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
        </p>
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
        </p>
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
        </p>
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
        </p>
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
          placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
          veniam possimus? Facilis corporis quae at alias esse optio sint 
          dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
        </p>
</div>
</body>
</html>
''';
var code7 = '''
<!DOCTYPE html>
<html lang="en">
<head>
<title>Tutor Joes</title>
<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<style>
   div{
    width: 900px;
    height: 500px;
    /* background-color: teal; */
    background: teal url(jerry.png) no-repeat;
    /* default property */
    background-size: auto;  
    
    background-size: 200px;
    /* width    height */
    background-size: 400px 200px;
    /* Some issue is created */
    background-size: 100%;
    /* solution */
    background-size: cover;
    background-size: contain;


    padding: 10px;
   }
    </style>
</head>
<body>
    <h1>Background Size in CSS</h1>
    <div>
    <p>
      Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
      placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
      veniam possimus? Facilis corporis quae at alias esse optio sint 
      dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
      placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
      veniam possimus? Facilis corporis quae at alias esse optio sint 
      dignissimos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus et nemo necessitatibus repudiandae repellendus, culpa ducimus quisquam. Tempora nulla modi quo. Dolor quidem aspernatur ex sed tempore? Deleniti maiores ut nostrum officiis minus culpa. Ratione nobis impedit magnam aliquid fugit consectetur nemo illo necessitatibus suscipit soluta natus cumque adipisci accusantium explicabo expedita odit quo possimus facilis deleniti et quisquam, magni eligendi modi? Exercitationem veritatis iusto dolore at eius sunt sit ea autem adipisci alias temporibus maxime voluptates repellendus a, laborum cupiditate nisi dicta atque ut magnam. At, sint error. Delectus reiciendis voluptatibus provident quae praesentium consequuntur illo libero, suscipit numquam aliquid voluptates quia perspiciatis rerum doloribus. A tenetur iusto molestiae, facilis natus error. Delectus quaerat quisquam consequuntur libero blanditiis temporibus necessitatibus impedit sapiente! Necessitatibus doloribus dolor amet beatae ipsam voluptas, eligendi animi excepturi et ducimus saepe esse distinctio ex sequi asperiores quaerat labore deserunt neque fuga facere doloremque eveniet voluptatibus deleniti accusamus. Consequuntur explicabo, labore adipisci aut inventore sit, molestias cum nobis quam sint recusandae quos eos ducimus vitae corporis laboriosam accusantium, a nostrum cupiditate? Cum quam ipsam facilis quas quaerat enim eos adipisci quisquam recusandae fuga magnam iste praesentium dolor corrupti facere non, quis, maxime beatae obcaecati excepturi. Reprehenderit?.
    </p>
</div>
</body>
</html>
''';
var code6 = '''
<!DOCTYPE html>
<html lang="en">
<head>
<title>Tutor Joes</title>
<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<style>
    html{
        background:white;
    }
    body{
        /* url - uniform resource locator */
        background: teal;
        background-image: url(tom.png);
        color:black;
        background-repeat: no-repeat;
        /* background-repeat: repeat-x;  */
        /* background-repeat: repeat-y; */
        background-size: 300px 300px;
        /* bottom center */
        background-position: bottom;
        /* to cover the image in case small image */
        background-size: cover;
        height: 800PX;
        width: 800px;
    }
    h1{
        font-family: 'Pacifico', cursive;
        font-weight:normal;
        font-variant: small-caps;
        color:yellow;
    }
    p{
        font-style:italic;
        font-size: 25px;
    }
    span{
        font: bold 12pt Arial; 
    }
    </style>
</head>
<body>
    <h1>Background Properties</h1>
    <p>
      <span>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
      placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
      </span>veniam possimus? Facilis corporis quae at alias esse optio sint 
      dignissimos.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Qui, 
      placeat eius! Error deserunt eaque sed non, laboriosam quaerat veritatis
      veniam possimus? Facilis corporis quae at alias esse optio sint 
      dignissimos.
    </p>
    
</body>
</html>
''';
var code5 = '''
body {
    background-image: url("img_tree.png");
    background-repeat: no-repeat;
    background-position: right top;
  }
''';
var code4 = '''
body {
  background-image: url("img_tree.png");
  background-repeat: no-repeat;
}
''';
var code3 = '''
body {
  background-image: url("gradient_bg.png");
  background-repeat: repeat-x;
}
''';
var code2 = '''
body {
  background-image: url("rose.png");
}
''';
var code1 = '''
h1 {
  background-color: green;
}

div {
  background-color: lightblue;
}

p {
  background-color: yellow;
}
''';
