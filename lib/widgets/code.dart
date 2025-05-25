import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/vs2015.dart';
import 'package:learn_smart/widgets/code_pro.dart';
import 'package:share_plus/share_plus.dart';

class Code extends StatelessWidget {
  const Code({
    super.key,
    required this.title,
    required this.code,
    required this.type,
  });
  final String title;
  final String code;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFF212121),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          title,
                          style: const TextStyle(
                            color: Color(0xFF7BCEF7),
                            fontSize: 18,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => _onCopy(context),
                      icon: Icon(
                        Icons.copy,
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                    IconButton(
                      onPressed: _onShare,
                      icon: Icon(
                        CupertinoIcons.share,
                        color: Colors.white.withOpacity(0.3),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 2,
                  width: 20,
                  color: const Color(0Xff7BCEF7),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(color: Color(0xFF1E1E1E)),
            width: double.infinity,
            child: SingleChildScrollView(
              physics: RangeMaintainingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: HighlightView(
                code,
                tabSize: 4,
                language: type,
                theme: vs2015Theme,
                padding: const EdgeInsets.all(12),
                textStyle: const TextStyle(
                  fontFamily: 'My awesome monospace font',
                  fontSize: 20,
                  height: 2,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
          Container(
            height: 20,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF212121),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onCopy(BuildContext context) async {
    await FlutterClipboard.copy(code);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Row(
            children: [
              Text(
                'Copied to Clipboard',
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 0.5,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              const Spacer(),
              Icon(
                Icons.verified_user,
                color: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
          duration: const Duration(milliseconds: 800),
          elevation: 10,
          backgroundColor: Colors.white,
        ),
      );
  }

  void _onShare() async {
    await Share.share(code);
  }
}
