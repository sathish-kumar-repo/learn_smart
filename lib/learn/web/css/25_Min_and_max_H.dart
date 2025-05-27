import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class MMHProperty extends StatefulWidget {
  const MMHProperty({Key? key}) : super(key: key);

  @override
  State<MMHProperty> createState() => _MMHPropertyState();
}

class _MMHPropertyState extends State<MMHProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 25,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Minimum Height and Maximum Height Property'),
          const H3('max-height'),
          const P(
              'The max-height property in CSS is used to set the maximum height of an element. If the content of the element is larger than the specified maximum-height then the content will overflow otherwise it has no effect. If the content of the element is smaller then it has no effect. This property value can be overridden by the max-height property. '),
          const H3('min-height'),
          const P(
              'The min-height property in CSS is used to set the minimum height of an element. This is used when the content of element is smaller than the min-height and if the content is larger than the min-height then it has no effect. This property ensures that the value of the height property is not less than the specified min-height value of the element in consideration. '),
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
                      TrText('length'),
                    ),
                    DataCell(
                      TrText(
                          'The default value is 0. Defines the minimum height in px, cm, etc'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('%'),
                    ),
                    DataCell(
                      TrText(
                          'The defines the minimum height in percent of the containing block'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
