import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/React/topicsName/reactTopics.dart';

class ReactCreateComponents extends StatefulWidget {
  const ReactCreateComponents({Key? key}) : super(key: key);

  @override
  State<ReactCreateComponents> createState() => _ReactCreateComponentsState();
}

class _ReactCreateComponentsState extends State<ReactCreateComponents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 4,
        topicsName: reactjsTopics,
        img: 'Reactt.png',
      ),
      body: MyPage(
        children: [
          const H1('Creating Components'),
          Code(title: 'App.jsx', code: code1, type: 'jsx'),
          Code(title: 'Learn..jsx', code: code2, type: 'jsx'),
        ],
      ),
    );
  }
}

var code2 = '''
//LearnComponent.jsx
import { LearnComponent } from "./components/LearnComponent";

// one component must return one child
function App() {
  return (
    <>
      <div>Sathish React Tutorial</div>
      <LearnComponent />
    </>
  );
}

// to avoid additional div use  <Fragment> </Fragment>(import { Fragment } from "react";) or <>  </>(empty fragment)
export default App;
''';
var code1 = '''
// rafc

export const LearnComponent = () => {
  return <div>This is text from custom component</div>;
};
''';
