import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/sass/topicsName/SASSTopics.dart';

class SassImportAndPartials extends StatefulWidget {
  const SassImportAndPartials({Key? key}) : super(key: key);

  @override
  State<SassImportAndPartials> createState() => _SassImportAndPartialsState();
}

class _SassImportAndPartialsState extends State<SassImportAndPartials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 8,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Import and Partials'),
          const Note('@import rule has a number of serious issues:'),
          const Link('https://sass-lang.com/documentation/at-rules/import/'),
          const H3('How Do I Migrate?'),
          const P(
              'We’ve written a migration tool that automatically converts most @import-based code to @use-based code in a flash. Just point it at your entrypoints and let it run!'),
          const H3('A Modern Sass Folder Structure'),
          const Link(
              'https://dev.to/dostonnabotov/a-modern-sass-folder-structure-330f'),
          const P(
              'However, the example of folder structure that is given in Sass Guidelines uses @import method, which is now deprecated. Now, we have @use and @forward, which are modern methods of importing files and folders in Sass. '),
          const Li('here is a famous 7-1 pattern folder structure.'),
          const Li(
              'it has 7 different folders, which contain files or so-called \'partials\', which are then all imported to one main Sass file and compiled into one big CSS file.'),
          Code(title: 'Folder', code: code1, type: 'txt'),
          const P(
              'As you might have noticed, in every folder, there is a file, called _index.scss. It is there becuase you no longer need to import each file from the folder one by one. In _index.scss file, there should be only @forwards which is literally used to "forward" your files as a folder across other different files.'),
          const P(
              'For example, in our case, in abstracts/ folder, there are 3 different files except for _index.scss one. In _index.scss file, we can "forward" each file within that folder:_index.scss'),
          Code(title: '_index.scss.scss', code: code2, type: 'scss'),
          const P(
              'If you want to use all files within abstracts/ folder, you can "use" them like this:'),
          Code(title: 'main.scss', code: code3, type: 'scss'),
          const P(
              'However, if we had used @import method to import files, we wouldn\'t need _index.scss file and it would look like this:'),
          Code(title: 'main.scss', code: code4, type: 'scss'),
          const P(
              'Now, we can \'forward\' all files with _index.scss file within its folder, and import it in our main style.scss file using @use method. Result should look something like this:'),
          Code(title: 'main.scss', code: code5, type: 'scss'),
          const P(
              'Let\'s say you created some mixins in your _mixins.scss file. And, you want to use it in your _buttons.scss file to give some styling for buttons. What you can do is this:'),
          Code(title: '_buttons.scss', code: code6, type: 'scss'),
          const P(
              'The reason why _mixins.scss file is in abstracts/ folder is that mixins don\'t get compiled into CSS. Just like functions, maps and Sass variables. These all reusable files should be in abstracts/ folder, so that you can use those mixins, maps and variables across your files easily by importing them.'),
          const P(
              'You might be wondering what does this * mean. If you know Python or React, you might have seen this a lot. If you don\'t, it basically means that you can freely use all those reusable files within your current file. I mean, if you had used a instead of *, you would need to use a.something for wherever you have used the code that belongs to that folder.'),
          const P(
              'Also, note that /path should be relative to that file as well.'),
        ],
      ),
    );
  }
}

var code6 = '''
@use "../abstracts" as *;
''';
var code5 = '''
@use 'abstracts';
@use 'vendors';
@use 'base';
@use 'utilities';
@use 'components';
@use 'pages';
@use 'themes';
''';
var code4 = '''
@import 'abstracts/variables';
@import 'abstracts/media-query';
@import 'abstracts/colors';

@import 'base/reset';
@import 'base/base';

...
''';
var code3 = '''
@use 'abstracts';
''';
var code2 = '''
@forward 'variables';
@forward 'media-query';
@forward 'colors';
''';
var code1 = '''
sass/
|
|- abstracts/
|    |- _variables.scss
|    |- _media-query.scss
|    |- _colors.scss
|    ...
|    |- _index.scss
|
|- base/
|    |- _base.scss
|    |- _reset.scss
|    ...
|    |- _index.scss
|
|- utilities/
|    |- _main.scss
|    |- _container.scss
|    |- _exceptions.scss
|    ...
|    |- _index.scss
|
|- components/
|    |- _buttons.scss
|    |- _carousel.scss
|    |- _dropdown.scss
|    ...
|    |- _index.scss
|
|- layout/
|    |- _header.scss
|    |- _sidebar.scss
|    |- _footer.scss
|    ...
|    |- _index.scss
|
|- pages/
|    |- _about.scss
|    |- _contact.scss
|    ...
|    |- _index.scss
|
|- themes/
|    |- _theme.scss
|    |- _admin.scss
|    ...
|    |- _index.scss
|
|- vendors/
|    |- _bootstrap.scss
|    |- _modern-reset.scss
|    ...
|    |- _index.scss
|
|- style.scss
''';
