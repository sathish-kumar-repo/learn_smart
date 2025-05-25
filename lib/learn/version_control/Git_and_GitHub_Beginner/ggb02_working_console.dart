import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/version_control/Git_and_GitHub_Beginner/topicsName/git_and_github_beginner.dart';

class GitAndGitHubWorkingConsole extends StatefulWidget {
  const GitAndGitHubWorkingConsole({Key? key}) : super(key: key);

  @override
  State<GitAndGitHubWorkingConsole> createState() =>
      _GitAndGitHubWorkingConsoleState();
}

class _GitAndGitHubWorkingConsoleState
    extends State<GitAndGitHubWorkingConsole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: gitAndGitHubBeginner,
        img: 'git_inner.png',
      ),
      body: MyPage(
        children: [
          H1('Git Working Console'),
          H3('Basic Command'),
          Code(title: 'Terminal', code: code1, type: 'md'),
          H3('Commit'),
          Code(title: 'Terminal', code: code2, type: 'md'),
          H3('Staging'),
          Code(title: 'Terminal', code: code3, type: 'md'),
          H3('Comparing Changes'),
          Code(title: 'Terminal', code: code4, type: 'md'),
          H3('Remove File'),
          Code(title: 'Terminal', code: code5, type: 'md'),
          H3('Unstaging'),
          Code(title: 'Terminal', code: code5, type: 'md'),
          H3('Remove Commit Changes'),
          Code(title: 'Terminal', code: code5, type: 'md'),
        ],
      ),
    );
  }
}

var code1 = '''
PS F:\\Tutorial\\git> git --version
git version 2.43.0.windows.1

PS F:\\Tutorial\\git> git status
fatal: not a git repository (or any of the parent directories): .git

PS F:\\Tutorial\\git> git init
Initialized empty Git repository in F:/Tutorial/git/.git/

PS F:\\Tutorial\\git> git status
On branch master

No commits yet

nothing to commit (create/copy files and use "git add" to track)

PS F:\\Tutorial\\git> git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        newfile.py

nothing added to commit but untracked files present (use "git add" to track)

PS F:\\Tutorial\\git> git add .\\newfile.py
PS F:\\Tutorial\\git> git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   newfile.py

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   newfile.py
''';

var code2 = '''
PS F:\\Tutorial\\git> git commit -m "My first commit"
[master (root-commit) f714b2f] My first commit
 1 file changed, 1 insertion(+)
 create mode 100644 newfile.py

PS F:\\Tutorial\\git> git status
On branch master
nothing to commit, working tree clean

PS F:\\Tutorial\\git> git log
commit f714b2f9a2efac1fa62431af51c954be733f24c9 (HEAD -> master)
Author: App-sky-loom <appskyloom@gmail.com>
Date:   Thu Jun 6 11:52:13 2024 +0530

    My first commit
    
''';
var code3 = '''
PS F:\\Tutorial\\git> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   newfile.py

no changes added to commit (use "git add" and/or "git commit -a")

PS F:\\Tutorial\\git> git commit -m 'My Second Commit'
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   newfile.py

no changes added to commit (use "git add" and/or "git commit -a")

PS F:\\Tutorial\\git> git add .\\newfile.py

PS F:\\Tutorial\\git> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   newfile.py

PS F:\\Tutorial\\git> git commit -m 'My Second Commit'
[master f5be9fc] My Second Commit
 1 file changed, 1 insertion(+), 1 deletion(-)

PS F:\\Tutorial\\git> git status
On branch master
nothing to commit, working tree clean

PS F:\\Tutorial\\git> git log
commit f5be9fc27a89849c369d34a748c4058fce96bbfe (HEAD -> master)
Author: App-sky-loom <appskyloom@gmail.com>
Date:   Thu Jun 6 12:05:30 2024 +0530

    My Second Commit

commit f714b2f9a2efac1fa62431af51c954be733f24c9
Author: App-sky-loom <appskyloom@gmail.com>
Date:   Thu Jun 6 11:52:13 2024 +0530

    My first commit

PS F:\\Tutorial\\git> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   newfile.py

no changes added to commit (use "git add" and/or "git commit -a")

PS F:\\Tutorial\\git> git commit -a -m 'My third commit without staging'
[master 2f61f80] My third commit without staging
 1 file changed, 1 insertion(+)

PS F:\\Tutorial\\git> git status
On branch master
nothing to commit, working tree clean

PS F:\\Tutorial\\git> git log
commit 2f61f80ea0c84114ad7aa27c2dec26c7464c19cd (HEAD -> master)
Author: App-sky-loom <appskyloom@gmail.com>
Date:   Thu Jun 6 12:09:27 2024 +0530

    My third commit without staging

commit f5be9fc27a89849c369d34a748c4058fce96bbfe
Author: App-sky-loom <appskyloom@gmail.com>
Date:   Thu Jun 6 12:05:30 2024 +0530

    My Second Commit

commit f714b2f9a2efac1fa62431af51c954be733f24c9
Author: App-sky-loom <appskyloom@gmail.com>
Date:   Thu Jun 6 11:52:13 2024 +0530

    My first commit
''';

var code4 = '''
PS F:\\Tutorial\\git> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   newfile.py

no changes added to commit (use "git add" and/or "git commit -a")

PS F:\\Tutorial\\git> git diff
diff --git a/newfile.py b/newfile.py
index b7ab023..febda18 100644
--- a/newfile.py
+++ b/newfile.py
@@ -1,2 +1,3 @@
 print("Hello World!")
 print("Hello World!")
+print("Hi Hi")^M
PS F:\\Tutorial\\git> git add .\\newfile.py

PS F:\\Tutorial\\git> git diff

PS F:\\Tutorial\\git> git diff --staged
diff --git a/newfile.py b/newfile.py
index b7ab023..febda18 100644
--- a/newfile.py
+++ b/newfile.py
@@ -1,2 +1,3 @@
 print("Hello World!")
 print("Hello World!")
+print("Hi Hi")^M

PS F:\\Tutorial\\git> git commit  -m 'My Fourth commit for difference'   
[master 6cbceee] My Fourth commit for difference
 1 file changed, 1 insertion(+)

PS F:\\Tutorial\\git> git log
commit 6cbceee9aeb41758e6cea93cdf28e70f2697e580 (HEAD -> master)
Author: App-sky-loom <appskyloom@gmail.com>
Date:   Thu Jun 6 12:20:06 2024 +0530

    My Fourth commit for difference

commit 2f61f80ea0c84114ad7aa27c2dec26c7464c19cd
Author: App-sky-loom <appskyloom@gmail.com>
Date:   Thu Jun 6 12:09:27 2024 +0530

PS F:\\Tutorial\\git> git status
On branch master
nothing to commit, working tree clean
''';
var code5 = '''
PS F:\\Tutorial\\git> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   newfile.py

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        README.md
        crendentials.txt

no changes added to commit (use "git add" and/or "git commit -a")

PS F:\\Tutorial\\git> git add .

PS F:\\Tutorial\\git> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   README.md
        new file:   crendentials.txt
        modified:   newfile.py


PS F:\\Tutorial\\git> git commit -m 'Fifth commit with credential file'
[master 466d896] Fifth commit with credential file
 3 files changed, 4 insertions(+)
 create mode 100644 README.md
 create mode 100644 crendentials.txt

PS F:\\Tutorial\\git> git log
commit 466d896020fefeb739e41dbe81795b523dba58ff (HEAD -> master)
Author: App-sky-loom <appskyloom@gmail.com>
Date:   Thu Jun 6 12:26:08 2024 +0530

    Fifth commit with credential file

commit 6cbceee9aeb41758e6cea93cdf28e70f2697e580

PS F:\\Tutorial\\git> git rm --cached .\\crendentials.txt
rm 'crendentials.txt'

PS F:\\Tutorial\\git> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        deleted:    crendentials.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        crendentials.txt

PS F:\\Tutorial\\git> git commit -m 'Sixth commit to remove credential file'
[master 6c14a89] Sixth commit to remove credential file
 1 file changed, 2 deletions(-)
 delete mode 100644 crendentials.txt

PS F:\\Tutorial\\git> git log
commit 6c14a8940efd5eba81e82128a644c8ae61e3613d (HEAD -> master)
Author: App-sky-loom <appskyloom@gmail.com>
Date:   Thu Jun 6 12:29:42 2024 +0530

    Sixth commit to remove credential file

commit 466d896020fefeb739e41dbe81795b523dba58ff

PS F:\\Tutorial\\git> git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        crendentials.txt

nothing added to commit but untracked files present (use "git add" to track)
''';

var code6 = '''
PS F:\\Tutorial\\git> git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        crendentials.txt

nothing added to commit but untracked files present (use "git add" to track)

PS F:\\Tutorial\\git> git add .\\newfile.py      

PS F:\\Tutorial\\git> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   newfile.py

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        crendentials.txt

PS F:\\Tutorial\\git> git diff

PS F:\\Tutorial\\git> git diff --staged
diff --git a/newfile.py b/newfile.py
index bf49ed3..a5c7861 100644
--- a/newfile.py
+++ b/newfile.py
@@ -2,3 +2,5 @@ print("Hello World!")
 print("Hello World!")
 print("Hi Hi")
 print("Add two values")
+print("Subtract values")^M
+print("show result")^M

PS F:\\Tutorial\\git> git reset HEAD
Unstaged changes after reset:
M       newfile.py

PS F:\\Tutorial\\git> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   newfile.py

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        crendentials.txt

no changes added to commit (use "git add" and/or "git commit -a")

PS F:\\Tutorial\\git> git restore .\\newfile.py      

PS F:\\Tutorial\\git> git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        crendentials.txt

nothing added to commit but untracked files present (use "git add" to track)
''';
var code7 = '''
PS F:\\Tutorial\\git> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   newfile.py

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        crendentials.txt

no changes added to commit (use "git add" and/or "git commit -a")

PS F:\\Tutorial\\git> git add .\\newfile.py     

PS F:\\Tutorial\\git> git commit -m 'seventh commit' 
[master bf08b82] seventh commit
 1 file changed, 1 insertion(+)

PS F:\\Tutorial\\git> git log
commit bf08b82bd396112ee5aa1f7d78adb1ea9572329a (HEAD -> master)
Author: App-sky-loom <appskyloom@gmail.com>
Date:   Thu Jun 6 12:39:57 2024 +0530

    seventh commit

commit 6c14a8940efd5eba81e82128a644c8ae61e3613d

PS F:\\Tutorial\\git> git reset --hard 6c14a8940efd5eba81e82128a644c8ae61e3613d
HEAD is now at 6c14a89 Sixth commit to remove credential file

PS F:\\Tutorial\\git> git log
commit 6c14a8940efd5eba81e82128a644c8ae61e3613d (HEAD -> master)
Author: App-sky-loom <appskyloom@gmail.com>
Date:   Thu Jun 6 12:29:42 2024 +0530

    Sixth commit to remove credential file

commit 466d896020fefeb739e41dbe81795b523dba58ff
''';
var code = '''''';
