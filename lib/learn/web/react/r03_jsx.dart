import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/React/topicsName/reactTopics.dart';

class ReactJSX extends StatefulWidget {
  const ReactJSX({Key? key}) : super(key: key);

  @override
  State<ReactJSX> createState() => _ReactJSXState();
}

class _ReactJSXState extends State<ReactJSX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: reactjsTopics,
        img: 'Reactt.png',
      ),
      body: MyPage(
        children: [
          const H1('What is JSX ?'),
          const Li('JSX stands for JavaScript XML'),
          const Li(
              'JSX is a JavaScript extension that allows you to write HTML in React'),
          const Li('JSX makes it easier to write and add HTML in React'),
          const Li(
              'JSX allows you to write HTML elements in JavaScript and place them in the DOM without any createElement() and/or appendChild() methods.'),
          const Li('JSX converts HTML tags into react elements.'),
          const Li(
              'Babel(package in react) is use in react for convert JSX to actual JavaScript'),
          const Li('Components Must return a block of JSX(using fragments)'),
          Code(title: 'main.jsx', code: code1, type: 'jsx'),
          Code(title: 'App.jsx', code: code2, type: 'jsx'),
          Code(title: 'Header.jsx', code: code3, type: 'jsx'),
          Code(title: 'App.css', code: code4, type: 'css'),
        ],
      ),
    );
  }
}

var code4 = '''
.bannerText {
  color: green;
}
.slogan {
  color: brown;
}
.code {
  color: blueviolet;
}
.error {
  color: red;
}
''';
var code3 = '''
import React from "react";

// Try this(html format)(JSX method)
export const Header = () => {
  let customCSS = "code";
  const isLogged = true;
  const greeting = isLogged ? <p>Welcome back!</p> : <p>Please Log in</p>;
  const items = ["Item1", "Item2", "Item3"];
  return (
    //   JSX Fragments
    <>
      <div>
        <h1 className="bannerText">Sathish</h1>
        <p className="slogan">Learn more be smart</p>
        {/* JavaScript Expression in JSX */}

        <p
          className={customCSS}
          style={{
            fontFamily: "fantasy",
            fontSize: "20px",
            fontStyle: "italic",
          }}
        >
          1 + 1 = {1 + 1}
        </p>

        {/* JSX with conditonal Rendering */}
        {greeting}

        {/* JSX with Lists */}
        <ul>
          {items.map((item, index) => (
            <li key={index}>{item}</li>
          ))}
        </ul>
      </div>
    </>
  );
};

/*
// In JS method
export const Header = () => {
  //   return React.createElement("div",prperties(class,id),child)
  return React.createElement(
    "div",
    null,
    React.createElement("h1", { className: "bannerText" }, "Sathish"),
    React.createElement("p", { className: "slogan" }, "Learn more be smart")
  );
};*/

// go yo babeljs.io
// untick all except react and choose React Runtime classic
// paste html code to babel javascript
// but don't use in real time
''';
var code2 = '''
import { Header } from "./components/Header";
import "./css/App.css";
function App() {
  return (
    <>
      {/* <div>Sathish React Tutorial</div>
      <LearnComponent /> */}
      <Header />
    </>
  );
}

export default App;
''';
var code1 = '''
import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App.jsx";

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
''';
