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
        activeIndex: 10,
        topicsName: reactjsTopics,
        img: 'Reactt.png',
      ),
      body: MyPage(
        children: [
          const H1('Creating Advice App using useState and useEffect'),
          Code(title: 'AdviceApp.jsx', code: code1, type: 'jsx'),
          Code(title: 'AdviceApp.css', code: code2, type: 'css'),
        ],
      ),
    );
  }
}

var code2 = '''
@import url("https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap");

* {
  font-family: "Inter", sans-serif;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  width: 100vw;
  height: 100vh;
  background-color: black;
  display: flex;
  justify-content: center;
  align-items: center;
}

.advice-app {
  color: #fff;
  text-align: center;
}
.advice-app h3 {
  font-size: 20px;
  font-weight: 500;
}
.advice-app button {
  border: none;
  padding: 10px 20px;
  background-color: yellow;
  border-radius: 5px;
  margin-top: 40px;
}

.advice-app p {
  margin-top: 20px;
}
.advice-app p b {
  color: aqua;
}
''';
var code1 = '''
import { useEffect, useState } from "react";
import "./AdviceApp.css";

export const AdviceApp = () => {
  const [advice, setAdvice] = useState("Please Click Button to Get Advice");
  const [count, setCount] = useState(0);

  async function getAdvice() {
    const res = await fetch("https://api.adviceslip.com/advice");

    const data = await res.json();
    // console.log(data);
    setAdvice(data.slip.advice);
    setCount((c) => c + 1);
  }
  useEffect(function () {
    getAdvice();
  }, []);
  return (
    <div className="advice-app">
      <h3>{advice}</h3>
      <button onClick={getAdvice}>Get Advice</button>
      <Counter count={count} />
    </div>
  );
};
function Counter(props) {
  return (
    <p>
      You have read <b>{props.count}</b> pieces of advice
    </p>
  );
}
''';
