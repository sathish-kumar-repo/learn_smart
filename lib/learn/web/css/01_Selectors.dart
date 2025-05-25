import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class SelectorsInCss extends StatefulWidget {
  const SelectorsInCss({Key? key}) : super(key: key);

  @override
  State<SelectorsInCss> createState() => _SelectorsInCssState();
}

class _SelectorsInCssState extends State<SelectorsInCss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CSS Selectors'),
          const H2('Types'),
          const H3('1. Simple Selectors'),
          const Li('Element( tagname)'),
          const Li('Class (.)'),
          const Li('D (#)'),
          const Li('Universal'),
          const H3('2. Combinators Selectors'),
          const Li('Descendant'),
          const Li('Direct child'),
          const Li('Adjacent siblings'),
          const Li('General siblings'),
          const H3('3. Attribute selectors'),
          const H3('4. Pseudo Class selectors'),
          const H3('5. Pseudo element selectors'),
          const P(
              'CSS selectors are used to "find" (or select) HTML elements based on their.Mainly used Selectors are following : '),
          const H2('Simple Selectors'),
          const H3('Element or Tag Selector'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H3('Class Selector'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('id Selector'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H3('Universal Selectors'),
          Code(title: 'style.css', code: code4, type: 'css'),
          const H3('Multiple Selectors'),
          Code(title: 'style.css', code: code5, type: 'css'),
          const H2('Combinators Selectors'),
          const H3('Descendant'),
          Code(title: 'style.css', code: code6, type: 'css'),
          const H3('Direct child'),
          Code(title: 'style.css', code: code7, type: 'css'),
          const H3('Adjacent siblings'),
          Code(title: 'style.css', code: code8, type: 'css'),
          const H3('General siblings'),
          Code(title: 'style.css', code: code9, type: 'css'),
          const H2('Attribute selectors'),
          const P(
              'In CSS, an attribute selector is a way to target elements based on the presence or value of their attributes. It allows you to select elements that have a specific attribute or apply styles to elements based on the attribute value. Attribute selectors are denoted by square brackets [ ] and can be used with various comparison operators.'),
          const H3('Select elements with a specific attribute:'),
          const P(
              'This selects all elements that have the specified attribute, regardless of its value. For example, [required] selects all elements that have the required attribute.'),
          Code(title: 'style.css', code: code10, type: 'css'),
          const H3('Select elements with a specific attribute and value:'),
          const P(
              'This selects elements that have the specified attribute and exactly match the attribute value. For example, [type=text] selects all elements with type="text".'),
          Code(title: 'style.css', code: code11, type: 'css'),
          const H3(
            'Select elements with an attribute value starting with a specific string:',
          ),
          const P(
              'This selects elements whose attribute value starts with the specified string. For example, [href^="https://"] selects all elements with an href attribute that starts with "https://".'),
          Code(title: 'style.css', code: code12, type: 'css'),
          const H3(
              'Select elements with an attribute value ending with a specific string:'),
          const P(
              'This selects elements whose attribute value ends with the specified string. For example, [src\$=".png"] selects all elements with a src attribute that ends with ".png".'),
          Code(title: 'style.css', code: code13, type: 'css'),
          const H3(
              'Select elements with an attribute value containing a specific string:'),
          const P(
              'This selects elements whose attribute value contains the specified string. For example, [class*="active"] selects all elements with a class attribute that contains the string "active" '),
          Code(title: 'style.css', code: code14, type: 'css'),
          const H4('Some Example'),
          Code(title: 'style.css', code: code15, type: 'css'),
          const H4('Example in based anchor'),
          Code(title: 'style.css', code: code16, type: 'css'),
          const H2('Pseudo Class selectors'),
          const P(
              'A pseudo-class is used to define a special state of an element. Used for '),
          const Li('when a user mouses over it'),
          const Li('visited and unvisited links differently'),
          const Li('when it gets focus'),
          const H3('Types'),
          const Li('root'),
          const Li('first-child'),
          const Li('last-child'),
          const Li('nth-child'),
          const Li('nth-of-type'),
          const Li('only-child'),
          const Li('only-of-child'),
          const Li('first-of-type'),
          const Li('last-of-type'),
          const Li('empty'),
          const Li('not'),
          const Li('Pseudo Class '),
          const Li('target'),
          const Li('attribute selector'),
          const Li('is'),
          const H3('Root'),
          const P('The :root selector matches the document\'s root element. '),
          Code(title: 'style.css', code: code17, type: 'css'),
          const H3('first-child'),
          const P(
              'The :first-child CSS pseudo-class represents the first element among a group of sibling elements.'),
          const H3('last-child'),
          const P(
              'This :last-child selector matches every element that is the last child of its parent.'),
          const Note(
              'This selector only select element, that element must have parents'),
          Code(title: 'style.css', code: code18, type: 'css'),
          const H3('Nth Child Nth Last Child'),
          const P(
              'This:nth-last-child(n) selector matches every element that is the nth child, regardless of type, of its parent, counting from the last child. '),
          Code(title: 'style.css', code: code19, type: 'css'),
          const H3('Nth of type Nth Last of type'),
          const P(
              'This :nth-last-of-type(n) selector matches every element that is the nth child, of a particular type, of its parent, counting from the last child. '),
          Code(title: 'style.css', code: code20, type: 'css'),
          const H3('Only Child'),
          const P(
              'This :only-child CSS pseudo-class represents an element without any siblings. This is the same as :first-child:last-child or :nth-child(1):nth-last-child(1) , but with a lower specificity. '),
          const Note('Parent complusory'),
          Code(title: 'style.css', code: code21, type: 'css'),
          const H3('Only Of Type'),
          const P(
              'The :only-of-type pseudo-class represents an element that has a parent element and whose parent element has no other element children with the same expanded element name. '),
          const Note('Need Not parent'),
          Code(title: 'style.css', code: code22, type: 'css'),
          const H3('First Last Of Type'),
          const P(
              'This :last-of-type selector matches every element that is the last child, of a particular type, of its parent. '),
          const Note('Need not parent'),
          Code(title: 'style.css', code: code23, type: 'css'),
          const H3('Empty'),
          const P(
              'The :empty CSS pseudo-class represents any element that has no children. Children can be either element nodes or text (including whitespace). '),
          const Note('space is also character'),
          Code(title: 'style.css', code: code24, type: 'css'),
          Code(title: 'index.html', code: code25, type: 'html'),
          const H3('Not'),
          const P(
              'This :last-of-type selector matches every element that is the last child, of a particular type, of its parent. '),
          Code(title: 'style.css', code: code26, type: 'css'),
          Code(title: 'index.html', code: code27, type: 'html'),
          const H3('Lang'),
          const P(
              'The :lang() pseudo class selector in CSS matches elements based on the context of their given language attribute. '),
          Code(title: 'style.css', code: code28, type: 'css'),
          Code(title: 'index.html', code: code29, type: 'html'),
          const H2('Pseudo Class '),
          const P(
              'Pseudo-classes is a way to describe the state of the link or it gives effect to the anchor tag < a >. A user can show a link whether it has been visited by them previously or it is in a running state, We can also change the cursor sign when the mouse is over '),
          Code(title: 'style.css', code: code30, type: 'css'),
          const H3('Target'),
          const P(
              'This pseudo-class :target is used to style the target element of a URL containing a fragment identifier. '),
          Code(title: 'index.html', code: code31, type: 'html'),
          const H3('Forms'),
          const P(
              'This < form > element is a container for different types of input elements, such as: text fields, checkboxes, radio buttons, submit buttons, etc. '),
          Code(title: 'index.html', code: code32, type: 'html'),
          const H3('Is'),
          const P(
              'This is a keyword added to a selector that lets you style a specific part of the selected element(s). '),
          Code(title: 'index.html', code: code33, type: 'html'),
          const H2('Pseudo Elements Property in CSS'),
          const P(
              'This pseudo-element can be defined as a keyword which is combined to a selector that defines the special state of the selected elements. Unlike the pseudo-classes, this pseudo-elements are used to style the specific part of an element, whereas the pseudo-classes are used to style the element. '),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('Selector'),
                ),
                DataColumn(
                  label: ThText('used for'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('::after'),
                    ),
                    DataCell(
                      TrText(
                          'The insert something after the content of each < p > element '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('::before'),
                    ),
                    DataCell(
                      TrText(
                          'The insert something before the content of each < p > element'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('::first-letter'),
                    ),
                    DataCell(
                      TrText(
                          'The selects the first letter of each < p > element'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('::first-line'),
                    ),
                    DataCell(
                      TrText(
                          'The selects the first line of each < p > element'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('::selection'),
                    ),
                    DataCell(
                      TrText(
                          'he selects the portion of an element that is selected by a user'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('::marker'),
                    ),
                    DataCell(
                      TrText(
                          'The ::marker pseudo-element selects the markers of list items.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Code(title: 'index.html', code: code34, type: 'html'),
        ],
      ),
    );
  }
}

var code = '''''';
var code34 = '''
<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <title>Tutorials</title>
        <style>
            /* Placeholder */
            input::placeholder{
                color: teal;
            }
            /* Selection */
            p::selection{
                background-color: #222f3e;
                color: white;
            }
            /* First letter pseudo selectors */
            P::first-letter{
                font-size: 40px;
                font-weight: bold;
                color: red;
            }
            p::first-line{
                color: blue;
            }

            .box{
                background-color: #333;
                color: white;
                width: 300px;
                height: 100px;
                position: relative;
            }
            /* Before and after acts a element
            speciality, both before and after selectors styling individual
            before and after selectors inside block la irrukum(eg box)  
            position property do and style individual */
            .box::before{
                /* complusory content irrukanum may empty or some information */
                content:'';
                width: 100%;
                height: 20px;
                background-color: #ff4757;
                position: absolute;
                top:0;
                left: 0;
            }
            .box::after{
                /* complusory content irrukanum may empty or some information */
                content:'';
                width: 100%;
                height: 20px;
                background-color: #ff4757;
                position: absolute;
                bottom:0;
                left: 0;
            }
        </style>
    </head>
    
    <body>
        <h1>Pseudo element selectors</h1> 
        <div class="box">Pseudo elements</div>  

            <p>
                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non ratione nesciunt quasi, earum quo veniam eligendi culpa in, reiciendis quas aperiam quam sint, corrupti dolorum iusto magnam officia! In, porro?
            </p>

            <p>
                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non ratione nesciunt quasi, earum quo veniam eligendi culpa in, reiciendis quas aperiam quam sint, corrupti dolorum iusto magnam officia! In, porro?
            </p>
      
            <input type="text" placeholder="Enter Name">
        </div>
        
        </div>
    </body>
</html>
''';
var code33 = '''
<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <title>Tutorials</title>
        <style>
            #d1{
                background-color: aliceblue;
            }
            #d2{
                background-color: antiquewhite;
            }
            /* Now task */
            /* d1 la irruka h2,h3,h4 select panuga d2 */

            /* Normal Method */
            #d1 h2,
            #d1 h3,
            #d1 h4{
                color: red;
            }

            /* Easy method */
            #d1 :is(h2,h3,h4){
                color: blue;
            }
            /* Other Task */
            /* d1 la irruka h2 and d2 la irruka h2 select panuga */
            
            /* Normal Method */
            #d1 h2,
            #d2 h2{
                color: green;
            }
            /* Easy method */
            :is(#d1,#d2) h2{
                color: brown;
            }

            /* Other new task */

            /* d1, d2 la irruka h2 and paragraph select panuga */
            :is(#d1,#d2) :is(h2,p){
                color: red;
            }
            /* Hover  */
            :is(#d1,#d2) h2:hover{
                color: chocolate;
            }
        </style>
    </head>
    
    <body>
        <h1>is() Pseudo Class Selector</h1>  
        <div id="d1">
            <h2>H2 - Heading One</h2>
            <h3>H3 - Sub Heading - 1</h3>
            <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti saepe a hic consectetur! Eum quam molestiae cumque tenetur sapiente cupiditate perferendis excepturi odio nulla dignissimos. Cupiditate deserunt accusamus ratione odio!
            </p>
            <h4>H4 - Sub Heading - 2</h4>
            <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. In impedit corrupti expedita itaque veniam voluptatem ut, iste numquam illo quidem, omnis adipisci nostrum temporibus amet! Quo, officia! Deleniti, fuga facere.
            </p>
        </div>
        <hr>
        <div id="d2">
            <h2>H2 - Heading Two</h2>
            <p>
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Blanditiis error animi, ut laborum porro nostrum eos eveniet deleniti, provident vel veniam consequatur! Eveniet, architecto quos! Tempore dolorum doloribus consequatur nihil?
            </p>
        </div> 
        <!-- This para is outside therefore cannot do any thing -->
        <p>
            <b>Outside</b> Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, dolorem alias? Impedit fugit, nam velit cum quidem blanditiis corrupti officia reprehenderit vitae repellendus, laudantium ducimus voluptas praesentium ratione unde adipisci.
        </p>
    </body>
</html>
''';
var code32 = '''
<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <title>Tutorials</title>
        <style>
            /* Focus */
            #txt:focus{
                outline: none;
                border: 1px solid brown;
            }

            /* checkbox is tick then work */
            input[type="checkbox"]:checked{
                /* Border cannot change */
                box-shadow: 0 0 0 3px red;
            }

            /* enabled */
            input[type="text"]:enabled{
                background-color: pink;
            }

            /* Disabled */
            input[type="text"]:disabled{
                background-color: red;
            }

            /* required */
            input[type="text"]:required{
                background-color: green;
            }

            /*Read write  */
            input[type="email"]:read-only{
                background-color: gray;
            }

            /*Read only  */
            input[type="email"]:read-write{
                background-color: plum;
            }

            /* invalid */
            input[type="text"]:invalid{
                border-color: red;
            }

            /* valid */
            input[type="text"]:valid{
                border-color: rgb(15, 225, 15);
            }

            /* Default in radiobutton */
            input[type="radio"]:default{
                box-shadow: 0 0 0 3px green;
            }
            
            /* this selector also use in select option */
            /* Select default option */
            option:default{
                color: red;
            }
/* ************************************************************************ */
            hr{
                border: 2px solid black;
                margin: 20px 0;
            }

        </style>
    </head>
    
    <body>
        <h1>Form CSS Pseudo Class Selector</h1>

        <span>:focus</span>
        <input type="text" id="txt">
        <hr>
        <!-- ------------------------------------------------- -->

        <span>:checked</span>
         <input type="checkbox" id="cricket">
         <label for="cricket">Cricket</label>
         <input type="checkbox" id="football">
         <label for="football">Football</label>
         <input type="checkbox" id="tennis">
         <label for="tennis">Tennis</label>
         <!-- for attrribute is important for attribut la entha element target panirigalo atha kudukanum-->
         <hr>
         <!-- ------------------------------------------------- -->

         <span>:enabled :disabled :required :optional</span>
         <br>
         <input type="text"> <!--enabled is default-->
         <br>
         <input type="text" disabled>
         <br>
         <input type="text" required>
         <br>
        <hr>
        <!-- ------------------------------------------------- -->

         <span>:read-only :read-write</span>
         <br>
         <input type="email" >   <!--read-write is default-->
         <br>
         <input type="email" readonly>
         <hr>
         <!-- ------------------------------------------------- -->

         <span>:valid :invalid</span>
         <br>
        <input type="text" placeholder="Enter Username" pattern="[a-z]*"> <!--Regular expression (pattern) -->
        <hr>
        <!-- ------------------------------------------------- -->

        <span>Default</span>
        <br>
        <input type="radio" name="gender" id="male" checked>
        <label for="male">Male</label>
        <input type="radio" name="gender" id="female">
        <label for="female">Female</label>
        <hr>
        <!-- ------------------------------------------------- -->

        <select >
            <option value="">select</option>
            <option value="C">C</option>
            <option value="C++">C++</option>
            <option value="Java">Java</option>
            <option value="CSS" selected >CSS</option>
        </select>
    </body>
</html>
''';
var code31 = '''
<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <title>Tutorials</title>
        <style>
            p{
                padding: 10px;
                background-color: aliceblue;
            }
            p:target{
                background-color: aquamarine;
                color: blue;
            }
        </style>
    </head>
    
    <body>
        <h1>Target</h1>
        <a href="#para-1">para-1</a>
        <a href="#para-2">para-2</a>
        <a href="#para-3">para-3</a> 
        <p id="para-1">Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae non quas quaerat corrupti aspernatur, tempore est dicta deleniti obcaecati, ducimus odit, id magni? Earum magnam ullam molestiae expedita odio ea.</p>  
        <p id="para-2">Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae non quas quaerat corrupti aspernatur, tempore est dicta deleniti obcaecati, ducimus odit, id magni? Earum magnam ullam molestiae expedita odio ea.</p>  
        <p id="para-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae non quas quaerat corrupti aspernatur, tempore est dicta deleniti obcaecati, ducimus odit, id magni? Earum magnam ullam molestiae expedita odio ea.</p>  
    </body>
</html>
''';
var code30 = '''
a:link{
  color:green;
}
a:hover{
  background-color: teal;
  color:white;
}
a:active{
   color:orangered;
}
a:visited{
   color:darkred;
}
''';
var code29 = '''
\<p lang="en">computer an electronic machine that can store, find and arrange information, calculate amounts and control other machines.</p>

<p lang="fr">ordinateur une machine électronique capable de stocker, de trouver et d'organiser des informations, de calculer des montants et de contrôler d'autres machines.</p>

<p lang="en">Tutor Joes</p>
''';
var code28 = '''
  p:lang(fr){
    color:blueviolet;
  }
  p:lang(en){
    color:red;
  }
''';
var code27 = '''
\<p class="para">
    Lorem ipsum, dolor sit amet consectetur adipisicing elit.
</p>
<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. </p>
<p class="para">
    Lorem ipsum, dolor sit amet consectetur adipisicing elit. 
</p>
''';
var code26 = '''
p.para{
  color:blue;
}
p:not(.para){
  color:red;
}
''';
var code25 = '''
  \<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque rem soluta fugiat harum, veritatis consequuntur!</p>
   <p></p>
''';
var code24 = '''
p:empty{
    padding: 10px;
    border: 2px solid goldenrod;
}  
''';
var code23 = '''
li:first-of-type{
  color:red;
}
li:last-of-type{
  color:green;
}
p:first-of-type{
  color:red;
}
p:last-of-type{
  color:green;
}
''';
var code22 = '''
p:only-of-type{
  color: brown;
}
''';
var code21 = '''
li:only-child{
  color:red;
}
''';
var code20 = '''
p:nth-of-type(1){
  color:red;
}
p:nth-last-of-type(1){
  color:blue;
}

li:nth-of-type(1){
  color:red;
}
li:nth-last-of-type(1){
  color:blue;
}

.l2 li:nth-of-type(odd){
  color:purple;
}
.l2 li:nth-of-type(even){
  color:green;
}
''';
var code19 = '''
#l1 li:nth-child(5){
  color:red;
  font-weight: bold;
}
/*
    n=0,1,2,3,4
    2n
      2*0=0
      2*1=2
      2*2=4
      2*3=6
    2n+1
      (2*0)+1=1
      (2*1)+1=3
      (2*2)+1=5
      (2*3)+1=7
    3n-1
      (3*0)-1=0
      (3*1)-1=2
      (3*2)-1=5
      (3*3)-1=8
*/
#l2 li:nth-child(3n-1){
  color:navy;
  font-weight: bold;
}
#l2 li:nth-last-child(5){
  color:orange;
  font-weight: bold;
} 
''';
var code18 = '''
#list-1 li:first-child{
  color:blue;
}

li:last-child{
  color:red;
}

p:first-child{
  color:orangered;
}
p:last-child{
  color:brown;
  font-weight: bold;
}
''';
var code17 = '''
:root{
  --bgcolor:aliceblue;
  --color:teal;
}
h1{
  color:var(--color);
}
''';
var code16 = '''
a[title]{
    color: blanchedalmond;
}
a[title="Link-1"]{
    color: orange;
}

a[href]{
    color:aqua
}
a[href="test.png"]{
    color:aqua
}

/* start with text channge color(add symbol ^)  */
a[href^="test"]{
    color: blueviolet;
}
/* end with text channge color(add symbol ^)  */
a[href\$="#"]{
    color: red;
}
''';
var code15 = '''
/* Attribute selectors */
div[class]{
    background: gray;
}
div[id]{
    background: gray;
}

/* in particular class or id */
div[class~="inner"]{
    background: gray;
}

/* suppose use multiple  */
/* For example -->inner and txt */
/* inner class property affected */
.txt{
    color: white;
}
/* solution is symbol ~ */
div[class~="inner"]{
    background: gray;
}
.txt{
    color: white;
}
''';
var code14 = '''
[attribute*=value] {
    /* Styles applied to elements with the specified attribute value containing the given string */
}
''';
var code13 = '''
[attribute\$=value] {
    /* Styles applied to elements with the specified attribute value ending with the given string */
}
''';
var code12 = '''
[attribute^=value] {
    /* Styles applied to elements with the specified attribute value starting with the given string */
}
''';
var code11 = '''
[attribute=value] {
    /* Styles applied to elements with the specified attribute and value */
}
''';
var code1 = '''
h1{
    font-size: 30px;
}
''';
var code2 = '''
.box{
    font-size: 30px;
}       
''';
var code3 = '''
#one{
   font-size: 30px;
  }
''';
var code4 = '''
*{
   margin: 0;
   padding: 0;
}
''';

var code5 = '''
h1,h2,h3,h4,h5,h6,b{
    color:red;
    font-family:rockwell;
}
''';
var code6 = '''
.box p{
    color: red;
}

.box p span{
     color: blue;
     font-weight: bold;
}
''';
var code7 = '''
  .box > p{
      color: blue;
  }   
''';
var code8 = '''
.box + p{
    color: blue;
}  
''';
var code9 = '''
.box ~ p{
    color:red
}
''';
var code10 = '''
[attribute] {
    /* Styles applied to elements with the specified attribute */
}
''';
