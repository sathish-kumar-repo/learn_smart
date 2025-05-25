import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';

class P extends StatelessWidget {
  const P(
    this.text, {
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          height: 1.7,
          letterSpacing: 0.1,
          wordSpacing: 1.5,
        ),
      ),
    );
  }
}

class CP extends StatelessWidget {
  const CP({
    super.key,
    required this.txt,
  });
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: P(txt),
    );
  }
}

class H5 extends StatelessWidget {
  const H5(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFFdc143c),
          fontSize: 20,
        ),
      ),
    );
  }
}

class H4 extends StatelessWidget {
  const H4(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.deepPurple,
          fontSize: 21,
        ),
      ),
    );
  }
}

class H3 extends StatelessWidget {
  const H3(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFFee1010),
          fontSize: 26,
          fontFamily: 'LobsterTwo',
        ),
      ),
    );
  }
}

class H2 extends StatelessWidget {
  const H2(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 25,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}

class H1 extends StatelessWidget {
  const H1(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFFfd79a8),
          fontSize: 40,
          fontFamily: 'Lobster',
        ),
      ),
    );
  }
}

class Img extends StatelessWidget {
  const Img({
    Key? key,
    required this.name,
    this.height = 250,
  }) : super(key: key);

  final String name;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: height,
      child: ZoomableImage(
        imageProvider: AssetImage('assets/images/$name'),
      ),
    );
  }
}

class ZoomableImage extends StatelessWidget {
  final ImageProvider imageProvider;

  const ZoomableImage({
    Key? key,
    required this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (context, animation, secondaryAnimation) {
              return ZoomableImageView(
                imageProvider: imageProvider,
              );
            },
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = const Offset(0.0, 1.0);
              var end = Offset.zero;
              var curve = Curves.ease;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        );
      },
      child: Image(image: imageProvider, fit: BoxFit.contain),
    );
  }
}

class ZoomableImageView extends StatelessWidget {
  final ImageProvider imageProvider;

  const ZoomableImageView({
    Key? key,
    required this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const MyAppBar(),
      body: PhotoView(
        imageProvider: imageProvider,
        minScale: PhotoViewComputedScale.contained,
        maxScale: PhotoViewComputedScale.covered * 2,
      ),
    );
  }
}

class Li extends StatelessWidget {
  const Li(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 14.25),
            child: Icon(
              Icons.circle,
              size: 12,
              color: Colors.black.withOpacity(0.55),
            ),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                letterSpacing: 0.1,
                wordSpacing: 1.5,
                height: 1.7,
                // fontFamily: 'NotoSerif',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OLi extends StatelessWidget {
  const OLi(
    this.text, {
    super.key,
    required this.no,
    this.col = Colors.redAccent,
    this.sep = '.',
  });
  final int no;
  final String text;
  final Color col;
  final String sep;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 8),
      child: Text.rich(
        TextSpan(
          style: TextStyle(
              fontSize: 20,
              letterSpacing: 0.1,
              wordSpacing: 1.5,
              height: 1.7,
              color: col
              // fontFamily: 'NotoSerif',
              ),
          text: '$no$sep ',
          children: [
            TextSpan(
              text: text,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrText extends StatelessWidget {
  const TrText(
    this.text, {
    super.key,
    this.isColor = false,
    this.clr = Colors.pinkAccent,
  });
  final String text;
  final bool isColor;
  final Color clr;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 17,
        color: isColor ? clr : Colors.black.withOpacity(0.65),
      ),
    );
  }
}

class ThText extends StatelessWidget {
  const ThText(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.pinkAccent,
      ),
    );
  }
}

class TableResponsive extends StatelessWidget {
  const TableResponsive({
    super.key,
    this.table,
  });
  final dynamic table;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: table,
    );
  }
}

class CTable extends StatelessWidget {
  const CTable({
    super.key,
    required this.col,
    required this.row,
  });
  final dynamic col;
  final dynamic row;
  @override
  Widget build(BuildContext context) {
    return DataTable(
      dataRowMaxHeight: double.infinity,
      border: TableBorder.all(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFDEDEDE),
      ),
      columns: col,
      rows: row,
    );
  }
}

class Note extends StatelessWidget {
  const Note(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFCC),
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Note:  ',
                      style: TextStyle(
                        color: Color(0xFFff1493),
                        fontSize: 24,
                        letterSpacing: 0.4,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    TextSpan(
                      text: text,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        height: 1.5,
                        wordSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Link extends StatelessWidget {
  const Link(
    this.link, {
    super.key,
  });
  final String link;
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFCC),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Note: ',
                    style: TextStyle(
                      color: Color(0xFFff1493),
                      wordSpacing: 1.5,
                      height: 1.35,
                      fontSize: 24,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const TextSpan(
                    text: ' Visit the Website',
                    style: TextStyle(
                      wordSpacing: 1.5,
                      height: 1.35,
                      fontSize: 24,
                      letterSpacing: 0.4,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: ' $link',
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      wordSpacing: 1.5,
                      height: 1.35,
                      fontSize: 24,
                      letterSpacing: 0.4,
                    ),
                  ),
                  const TextSpan(
                    text: ' for more information about this concept',
                    style: TextStyle(
                      wordSpacing: 1.5,
                      height: 1.35,
                      fontSize: 24,
                      letterSpacing: 0.4,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 30,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse(link);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: const Text(
                    'Visit',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 0.4,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Live extends StatelessWidget {
  const Live({
    super.key,
    required this.page,
  });
  final dynamic page;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => page,
            ),
          );
        },
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Live Preview',
              style: TextStyle(fontSize: 15),
            ),
            Icon(Icons.arrow_right_rounded)
          ],
        ),
      ),
    );
  }
}

// class s extends StatelessWidget {
//   const s(
//     this.text, {
//     super.key,
//     required this.name,
//     this.colorValue = Colors.red,
//   });
//   final String name;
//   final String text;
//   final Color colorValue;
//   @override
//   Widget build(BuildContext context) {
//     return RichText(
//       text: TextSpan(
//         text: '$name : ',
//         style: TextStyle(
//           color: colorValue,
//           fontSize: 22,
//           height: 1.7,
//           letterSpacing: 0.1,
//           wordSpacing: 1.5,
//         ),
//         children: [
//           TextSpan(
//             text: text,
//             style: const TextStyle(
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Sentence extends StatelessWidget {
  const Sentence({
    super.key,
    required this.eng,
    required this.tam,
    required this.sno,
    this.bd = true,
  });
  final int sno;
  final String eng;
  final String tam;
  final bool bd;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: RichText(
            text: TextSpan(
              text: "$sno) ",
              style: const TextStyle(
                height: 1.5,
                fontSize: 23.0,
                color: Colors.black38,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: eng,
                  style: const TextStyle(
                    fontSize: 23.0,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              tam,
              style: TextStyle(
                height: 1.5,
                fontSize: 20.0,
                fontFamily: "TiroTamil-Regular",
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          trailing: const Icon(
            Icons.favorite,
            size: 30.0,
            color: Colors.pinkAccent,
          ),
        ),
        bd == true
            ? const Divider(
                height: 1.0,
              )
            : Container(),
      ],
    );
  }
}
