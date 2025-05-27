import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class MMWProperty extends StatefulWidget {
  const MMWProperty({Key? key}) : super(key: key);

  @override
  State<MMWProperty> createState() => _MMWPropertyState();
}

class _MMWPropertyState extends State<MMWProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 26,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Minimum and Maximum Width Property'),
          const H3('max-width'),
          const P(
              'The max-width property in CSS is used to define the maximum width of an element. The value of the width cannot be larger than the value by max-width. If the content is larger than the max-width then it will go to the next line and if the content is smaller than max-width then it has no effect. '),
          const H3('min-width'),
          const P(
              'The min-width property in CSS is used to define the minimum width of an element. The value of the width cannot be less than the value of min-width. If the content specified within the element is smaller, min-width maintains the specified minimum width. '),
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
                          'The default value is 0. Defines the minimum width in px, cm, etc'),
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
                          'The defines the minimum width in percent of the containing block'),
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
