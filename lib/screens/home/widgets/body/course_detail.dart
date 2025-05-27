import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_smart/modal/course_modal.dart';

class CourseDetail extends StatefulWidget {
  final Course course;

  const CourseDetail({super.key, required this.course});

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: GestureDetector(
          onTap: () {
            context.go(widget.course.route);
          },
          child: TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
            tween: Tween<double>(
              begin: 1.0,
              end: _isHovered ? 1.03 : 1.0,
            ),
            builder: (context, scale, child) {
              return Transform.scale(
                scale: scale,
                child: child,
              );
            },
            child: Card(
              elevation: _isHovered ? 8 : 4,
              surfaceTintColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/${widget.course.img}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AutoSizeText(
                      widget.course.course,
                      maxLines: 1,
                      minFontSize: 14,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
