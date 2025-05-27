import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../data/card_list.dart';
import '../../../../modal/course_modal.dart';
import '../../../../widgets/responsive.dart';
import 'course_detail.dart';

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1233),
        child: Column(
          children: [
            Responsive(
              mobile: CourseView(
                crossAxisCount: size.width < 690 ? 2 : 3,
                aspectRation: size.width < 560 ? 0.85 : 1.1,
              ),
              desktop: CourseView(
                crossAxisCount: size.width < 650 ? 2 : 3,
                aspectRation: size.width < 650 ? 0.85 : 1.1,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class CourseView extends StatelessWidget {
  const CourseView({
    super.key,
    this.crossAxisCount = 3,
    this.aspectRation = 1.1,
  });

  final int crossAxisCount;
  final double aspectRation;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (contxt, index) {
        String cardName = cardData.keys.toList()[index];
        List<Course> lst = cardData[cardName]!;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            AutoSizeText(
              cardName,
              maxLines: 1,
              minFontSize: 14,
              style: GoogleFonts.notoSerif(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF7F9FA),
                borderRadius: BorderRadius.circular(10),
              ),
              child: GridView.builder(
                itemCount: lst.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  childAspectRatio: aspectRation,
                ),
                itemBuilder: (context, index) {
                  final course = lst[index];
                  return CourseDetail(
                    course: course,
                  );
                },
              ),
            ),
          ],
        );
      },
      itemCount: cardData.length,
    );
  }
}
