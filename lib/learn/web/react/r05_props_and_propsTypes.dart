import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/react/topicsName/reactTopics.dart';

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
        activeIndex: 5,
        topicsName: reactjsTopics,
        img: 'Reactt.png',
      ),
      body: MyPage(
        children: [
          const H1('Props and PropsTypes'),
          Code(title: 'PropsAndPropTypes.jsx', code: code1, type: 'jsx'),
          Code(title: 'LearnComponent.jsx', code: code2, type: 'jsx'),
          Code(title: 'Header.jsx', code: code3, type: 'jsx'),
          Code(title: 'Student.jsx', code: code4, type: 'jsx'),
          Code(title: 'ChildComponent.jsx', code: code5, type: 'jsx'),
          Code(title: 'ArraySample.jsx', code: code6, type: 'jsx'),
          Code(title: 'OneOfSample.jsx', code: code7, type: 'jsx'),
          Code(title: 'MultiTypeComponent.jsx', code: code8, type: 'jsx'),
          Code(title: 'FunctionSample.jsx', code: code9, type: 'jsx'),
          Code(title: 'PropsAndPropTypes.css', code: code10, type: 'css'),
        ],
      ),
    );
  }
}

var code10 = '''
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
.student table {
  border: 1px solid #ccc;
  border-collapse: collapse;
  width: 300px;
  margin-bottom: 10px;
}
.student table th,
.student table td {
  text-align: left;
  border: 1px solid #ccc;
  padding: 5px 10px;
}
.student table th {
  width: 100px;
}
''';
var code9 = '''
import PropTypes from "prop-types";

export const FunctionSample = (props) => {
  const { handleClick } = props;
  return (
    <div>
      <p>This is a function component</p>
      <button onClick={handleClick}>Click me!</button>
    </div>
  );
};

FunctionSample.propTypes = {
  handleClick: PropTypes.func.isRequired,
};
''';
var code8 = '''
import PropTypes from "prop-types";

export const MultiTypeComponent = (props) => {
  return (
    <div>
      <p>The value is {props.value}</p>
    </div>
  );
};

MultiTypeComponent.propTypes = {
  value: PropTypes.oneOfType([
    PropTypes.string,
    PropTypes.number,
    PropTypes.bool,
  ]).isRequired,
};
''';
var code7 = '''
import PropTypes from "prop-types";

export const OneOfSample = (props) => {
  const { color } = props;

  return (
    <div style={{ backgroundColor: color, padding: "20px", color: "white" }}>
      <p>This is Sample para with bg {color}</p>
    </div>
  );
};

OneOfSample.propTypes = {
  color: PropTypes.oneOf(["red", "green", "blue"]).isRequired,
};
''';
var code6 = '''
import PropTypes from "prop-types";

export const ArraySample = (props) => {
  const { items } = props;
  return (
    <div>
      <h2>Items List</h2>
      <ul>
        {items.map((item) => (
          <li key={item.id}>{item.name}</li>
        ))}
      </ul>
    </div>
  );
};
ArraySample.propTypes = {
  items: PropTypes.arrayOf(
    PropTypes.shape({
      id: PropTypes.number.isRequired,
      name: PropTypes.string.isRequired,
    })
  ).isRequired,
};
''';
var code5 = '''
import PropTypes from "prop-types";

export const ChildComponent = (props) => {
  return <div>{props.children}</div>;
};

ChildComponent.propTypes = {
  children: PropTypes.array,
};
''';
var code4 = '''
// Consider this is child component

import PropTypes from "prop-types";

export const Student = (props) => {
  return (
    <div className="student">
      <table>
        <tbody>
          <tr>
            <th>Name</th>
            <td>{props.name}</td>
          </tr>
          <tr>
            <th>Age</th>
            <td>{props.age}</td>
          </tr>
          <tr>
            <th>isMarried</th>
            <td>{props.isMarried ? "Yes" : "No"}</td>
          </tr>
        </tbody>
      </table>
    </div>
  );
};
Student.propTypes = {
  name: PropTypes.string,
  age: PropTypes.number,
  isMarried: PropTypes.bool,
};
Student.defaultProps = {
  name: "No name",
  age: 0,
  isMarried: false,
};
/**
 * props is used to pass any to value or properties to parent and get value in chil
 * propTypes is used to validate the data.. if supposed the data is number..you give string then show error in debug console but not is UI(Website)
 */
''';
var code3 = '''
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
// rafc

export const LearnComponent = () => {
  return <div>This is text from custom component</div>;
};
''';
var code1 = '''
import { LearnComponent } from "./components/LearnComponent";
import { Header } from "./components/Header";
import { ArraySample } from "./components/ArraySample";
import { ChildComponent } from "./components/ChildComponent";
import { FunctionSample } from "./components/FunctionSample";
import { MultiTypeComponent } from "./components/MultiTypeComponent";
import { OneOfSample } from "./components/OneOfSample";
import { Student } from "./components/Student";
import "./PropsAndPropTypes.css";

function PropsAndPropTypes() {
  const items = [
    { id: 1, name: "Item 1" },
    { id: 2, name: "Item 2" },
    { id: 3, name: "Item 3" },
  ];
  const handleClick = () => {
    alert("Button clicked!");
  };
  return (
    <>
      <div>Sathish React Tutorial</div>
      {/* Create my first Component */}
      <LearnComponent />
      {/* Create simple Componet */}
      <Header />
      {/* props and propTypes */}
      <Student name="Sathish Kumar" age={17} isMarried={false} />
      <Student name="Ram Kumar" age={35} isMarried={true} />
      <Student name="Sam Kumar" age={12} isMarried={false} />
      <Student name="Sara" />
      <Student />
      {/* props.children */}
      <ChildComponent>
        <p>This is sample para 1</p>
        <p>This is sample para 2</p>
        <p>This is sample para 3</p>
        {/*This is properties*/}
      </ChildComponent>
      {/* Passing array in props */}
      <ArraySample items={items} />
      {/* use oneOf */}
      <OneOfSample color="green" />
      {/* <OneOfSample color="orange" />  */}
      {/* use oneOfType */}
      <MultiTypeComponent value="Hello" />
      <MultiTypeComponent value={42} />
      <MultiTypeComponent value={true} />
      {/* Passing Functions */}
      <div>
        <h2>Parent component</h2>
        <FunctionSample handleClick={handleClick} />
      </div>
    </>
  );
}

export default PropsAndPropTypes;

// Consider the PropsAndPropTypes.jsx is parent components
''';
