import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/version_control/Git_and_GitHub_Beginner/topicsName/git_and_github_beginner.dart';

class GitAndGitHubBasic extends StatefulWidget {
  const GitAndGitHubBasic({Key? key}) : super(key: key);

  @override
  State<GitAndGitHubBasic> createState() => _GitAndGitHubBasicState();
}

class _GitAndGitHubBasicState extends State<GitAndGitHubBasic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: gitAndGitHubBeginner,
        img: 'git_inner.png',
      ),
      body: MyPage(
        children: [
          H1('Git and GitHub Basic'),
          H2('Images'),
          Img(name: 'git1.png'),
          Img(name: 'git2.png'),
          H3('GitHub'),
          Img(name: 'git3.png'),
          H3('Backend'),
          Img(name: 'git4.png'),
          H2('Commands'),
          H3('To check the version'),
          Code(title: 'Terminal', code: code1, type: 'md'),
          H3('Configuration'),
          Code(title: 'Terminal', code: code2, type: 'md'),
          H3('Set username and email id in local system'),
          Code(title: 'Terminal', code: code3, type: 'md'),
          H3('Work with github repo'),
          P('To copy the repo in local system is called working folder'),
          Code(title: 'Terminal', code: code4, type: 'md'),
          P('If add any new file in working folder and that file to switch staging area'),
          Code(title: 'Terminal', code: code5, type: 'md'),
          P('Staging area file to Git Copy folder'),
          Code(title: 'Terminal', code: code6, type: 'md'),
          P('Git Copy folder to Git main folder'),
          Code(title: 'Terminal', code: code7, type: 'md'),
          P('If changes in git original folder and copied to working folder'),
          Code(title: 'Terminal', code: code8, type: 'md'),
          H3('Local folder to github repo'),
          P('In local folder'),
          Code(title: 'Terminal', code: code9, type: 'md'),
          P('Connect folder to origin'),
          Code(title: 'Terminal', code: code10, type: 'md'),
          P('To check the branch name'),
          Code(title: 'Terminal', code: code11, type: 'md'),
          P('Its show \'master\''),
          P('To Push code'),
          Code(title: 'Terminal', code: code12, type: 'md'),
          H3('Branches'),
          P('To list the branch'),
          Code(title: 'Terminal', code: code13, type: 'md'),
          P('To Switch the branch'),
          Code(title: 'Terminal', code: code14, type: 'md'),
          P('Similar modification and any changes push to new brach'),
          Code(title: 'Terminal', code: code15, type: 'md'),
          Note('Only modification in new branch not main'),
          P('to check diff in current branch and another branch'),
          Code(title: 'Terminal', code: code16, type: 'md'),
          P('to merge current branch from another branch'),
          Code(title: 'Terminal', code: code17, type: 'md'),
          Note('Not forget to push'),
          P('to create new branch in terminal'),
          Code(title: 'Terminal', code: code18, type: 'md'),
          P('pull code to our branch'),
          Code(title: 'Terminal', code: code19, type: 'md'),
        ],
      ),
    );
  }
}

var code19 = '''
git pull origin <branch name>
''';

var code18 = '''
git branch newBranch2
''';
var code17 = '''
git merge newBranch
''';

var code16 = '''
git diff newBranch
''';

var code15 = '''
git push origin newBranch
''';

var code14 = '''
git checkout newBranch
''';

var code13 = '''
git branch -a
''';

var code12 = '''
// Either
git push origin master
// Or
git branch -M main
git push origin main
''';

var code11 = '''
git branch
''';

var code10 = '''
git remote add origin <url>
''';

var code9 = '''
git init
''';

var code8 = '''
git pull
''';

var code7 = '''
git push origin main
''';

var code6 = '''
git commit -m \'message\'
''';

var code5 = '''
// single file
git add <file>
// all file
git add . 
''';

var code4 = '''
git clone <url>
''';

var code3 = '''
# A190-CD36
git config --global user.name 'App-sky-loom'
git config --global user.email 'appskyloom@gmail.com'
''';

var code2 = '''
git config
''';

var code1 = '''
git --version
''';
