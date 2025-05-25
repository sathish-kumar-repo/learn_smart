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
        activeIndex: 6,
        topicsName: reactjsTopics,
        img: 'Reactt.png',
      ),
      body: MyPage(
        children: [
          const H1('Creating UserCard using useState'),
          Code(title: 'UserCard.jsx', code: code1, type: 'jsx'),
          Code(title: 'UserCard.css', code: code2, type: 'css'),
        ],
      ),
    );
  }
}

var code2 = '''
@import url("https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap");

* {
  box-sizing: border-box;
}

body {
  font-family: "Inter", sans-serif;
}

#root {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 20px;
  flex-wrap: wrap;
  min-height: 100vh;
  margin: 0;
}

h3 {
  margin: 10px 0;
}

h6 {
  margin: 5px 0;
  text-transform: uppercase;
}

p {
  font-size: 14px;
  line-height: 21px;
  text-align: center;
}
.card-container {
  background-color: #353b48;
  border-radius: 5px;
  box-shadow: 0px 10px 20px -10px rgba(0, 0, 0, 0.75);
  color: #b3b8cd;
  padding-top: 30px;
  width: 350px;
  max-width: 100%;
  text-align: center;
  position: relative;
}

.pro {
  color: #231e39;
  border-radius: 3px;
  font-size: 14px;
  font-weight: bold;
  padding: 3px 7px;
  position: absolute;
  top: 30px;
  left: 30px;
}

.online {
  background-color: greenyellow;
}
.offline {
  background-color: #febb0b;
}

.img {
  border: 1px solid #fff;
  border-radius: 50%;
  padding: 7px;
}

.buttons {
  display: flex;
  justify-content: center;
  gap: 10px;
}
button.primary {
  background-color: #0984e3;
  border: 1px solid #0984e3;
  border-radius: 3px;
  color: #fff;
  font-family: "Inter", sans-serif;
  font-weight: 500;
  padding: 10px 25px;
}
button.primary.outline {
  background-color: transparent;
}

.skills {
  background-color: #2f3640;
  text-align: left;
  padding: 15px;
  margin-top: 15px;
}
.skills ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}

.skills ul li {
  border: 1px solid #595180;
  display: inline-block;
  border-radius: 2px;
  padding: 7px;
  margin: 0 7px 7px 0;
  font-size: 12px;
}
''';
var code1 = '''
import PropTypes from "prop-types";
import "./UserCard.css";

const userData = [
  {
    name: "Sathish",
    city: "New York",
    description: "Front-end developer",
    skills: [
      "UI / UX",
      "Front End Development",
      "HTML",
      "CSS",
      "JavaScript",
      "React",
      "Node",
    ],
    online: false,
    profile: "img/1.jpeg",
  },
  {
    name: "Sam",
    city: "Australi",
    description: "Back-end developer",
    skills: [
      "UI / UX",
      "Front End Development",
      "HTML",
      "CSS",
      "JavaScript",
      "React",
      "Node",
    ],
    online: true,
    profile: "img/2.jpeg",
  },
  {
    name: "Devi",
    city: "London",
    description: "Front-end developer",
    skills: [
      "UI / UX",
      "Front End Development",
      "HTML",
      "CSS",
      "JavaScript",
      "React",
      "Node",
    ],
    online: false,
    profile: "img/3.jpeg",
  },
];

function User(props) {
  return (
    <div className="card-container">
      <span className={props.online ? "pro online" : "pro offline"}>
        {props.online ? "ONLINE" : "OFFLINE"}
      </span>
      <img src={props.profile} alt="user" className="img" />
      <h3>{props.name}</h3>
      <h3>{props.city}</h3>
      <p>{props.description}</p>
      <div className="buttons">
        <button className="primary">Message</button>
        <button className="primary outline">Following</button>
      </div>
      <div className="skills">
        <h6>Skills</h6>
        <ul>
          {props.skills.map((skill, index) => (
            <li key={index}>{skill}</li>
          ))}
        </ul>
      </div>
    </div>
  );
}

export const UserCard = () => {
  return (
    <>
      {userData.map((user, index) => (
        <User
          key={index}
          name={user.name}
          city={user.city}
          description={user.description}
          skills={user.skills}
          online={user.online}
          profile={user.profile}
        />
      ))}
    </>
  );
};

User.propTypes = {
  name: PropTypes.string.isRequired,
  city: PropTypes.string.isRequired,
  description: PropTypes.string.isRequired,
  skills: PropTypes.arrayOf(PropTypes.string).isRequired,
  online: PropTypes.bool.isRequired,
  profile: PropTypes.string.isRequired,
};

// <User
//   name="Sathish"
//   city="New York"
//   description="Front-end developer"
//   skills={[
//     "UI / UX",
//     "Front End Development",
//     "HTML",
//     "CSS",
//     "JavaScript",
//     "React",
//     "Node",
//   ]}
//   online={true}
//   profile="img/1.jpeg"
// />
''';
