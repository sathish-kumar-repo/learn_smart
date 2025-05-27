import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class UnitsCss extends StatefulWidget {
  const UnitsCss({Key? key}) : super(key: key);

  @override
  State<UnitsCss> createState() => _UnitsCssState();
}

class _UnitsCssState extends State<UnitsCss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Type of units in CSS'),
          const H2('CSS Units'),
          const P(
              'Every property like margin, padding, height, width, font-size, etc in CSS that has some dimensions or length needs a unit. CSS provides us with lots of units, some of whose values are fixed and are called absolute units while there are others whose values are relative to other values like that of the parent element’s or to the default value for that particular HTML element, these are called relative units. '),
          const H3('Absolute units'),
          const Li('centimeter'),
          const Li('millimeter'),
          const Li('inches'),
          const Li('pixel'),
          const Li('point'),
          const Li('picas'),
          const P(
              'These units are the ones whose values are fixed irrespective of any other factors like parent element or viewing window i.e the screen size won\'t affect the size of the element.'),
          const H3('CSS - px'),
          const P(
              'px stands for Pixel. Pixels can be defined as 1/96th part of an inch.'),
          const P(
              'Pixels are widely used in websites to make elements of fixed sizes (ex: font-size:14px;) i.e we don\'t want them to change size with screen size variation.'),
          const H3('CSS - pt'),
          const P(
              'pt stands for point. 1 CSS pt is defined as 1/72th of an inch.'),
          const P(
              'This unit is mainly used in printers for printing the output on paper and not so widely used for on-screen outputs.'),
          const H3('CSS - pc'),
          const P(
              'pc stands for pica or picas. 1 CSS pt is defined as 1/6th of an inch.'),
          const P(
              'This unit is mainly used in printers for printing the output on paper and not so widely used for on-screen outputs.'),
          const H3('CSS - cm'),
          const P('cm stands for centimeter. this also similar to pt and pc'),
          const H3('CSS - mm'),
          const P(
              'mm stands for millimeter. this also similar to pt,cm and pc'),
          const H3('CSS - in'),
          const P('mm stands for inch. this also similar to pt,pc,cm and mm'),
          const H4('Equivalence of Absolute Units '),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('UNIT'),
                ),
                DataColumn(
                  label: ThText('EQUAL TO'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('pixel'),
                    ),
                    DataCell(
                      TrText(' 	1px = 1/96th of an inch'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('point'),
                    ),
                    DataCell(
                      TrText('1pt = 1/72th of an inch'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('pica'),
                    ),
                    DataCell(
                      TrText(' 	1pc = 1/6th of an inch'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('centimeter'),
                    ),
                    DataCell(
                      TrText('2.54 cm = 1 inch'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('milimeter'),
                    ),
                    DataCell(
                      TrText('10mm = 1cm'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const H3('Relative units'),
          const Li('Percentage'),
          const Li('em'),
          const Li('rem'),
          const Li('ch'),
          const Li('vh'),
          const Li('vw'),
          const Li('vmin'),
          const Li('vmax'),
          const Li('ex'),
          const P(
              'These units are relative to some other length property like the parent element\'s font size or the size of the viewport.'),
          const P(
              'In relative units, we talk in terms of the same property, like, if we are talking about width of an element in relative units then it is relative to the WIDTH of the parent element/viewport. '),
          const P(
              'Relative units, if used correctly, are suitable for making elements scale properly with respect to other things on the same page '),
          const H3('CSS - % (percentage)'),
          const P(
              'Percentage is widely used for making responsive sites. This allows us to size HTML elements dynamically relative to the size of the viewing window. '),
          const H3('CSS - em'),
          const P(
              '1em refers to the default size of the property. So precisely, 1em is equivalent to 100%.'),
          const P(
              'This is mostly used to achieve the same values dynamically as is the case with % but applicable specifically to font size.'),
          const H3('CSS - rem'),
          const P(
              'This unit counters the adding-up effect of units like % and em. rem rather stands for Root em. '),
          const P(
              'This is used to achieve the values relative to the root/default value of the HTML elements. This is usually used for font-size property. '),
          const H3('CSS - vh'),
          const P(
              'This stands for view height. If we want our element to have exactly the same height as your viewport/ view window then use 100vh to denote that.'),
          const P(
              'Mainly used for pages that occupy the entire height of the viewport. '),
          const H3('CSS - vw'),
          const P(
              'vw stands for View Width. 100vw means 100% the width of the viewport/view window.'),
          const P(
              'Mainly used when the element width needs to be framed w.r.t the width of the viewport. '),
          const H4('In conclusion'),
          const H5('%'),
          const P('Depending Upon Parent'),
          const H5('em'),
          P(text1),
          const Li(
              'if you give em in font or other, then get size based upon browser(default is 16px) if parent and root element does not exit'),
          const Li(
              'Suppose parent are given but root element is not given, then get size based upon parent size'),
          const Li(
              'Suppose parent are not given but exit root element value, then get size based upon root element'),
          const H5('rem'),
          const P('html is root element for all element'),
          const Li(
              'if you give rem in font or other, then get size based upon browser if does not exit html size and this unit not affected by parent'),
          const Li(
              'suppose html size are given, then get size based upon html size'),
          const H5('vh and vw'),
          const P('It used for full screen website'),
          const H5('vmax and vmin'),
          const Li(
              'it work based upon maximum in viewport(width or height) Suppose you set width 20vmax and maximum viewport is width, then it is work based upon width and 20% in width and vice versa'),
          const Li(
              'It is same for vmin but take value based upon minimum in viewport'),
        ],
      ),
    );
  }
}

var text1 = '''
1em = 16px browser default size
1em = base value 16px * 1 => 16px
2em = base value 16px * 2 => 32px
suppose setting change
2em = base value 10px * 2 => 32px
Also used decimal value 
''';
