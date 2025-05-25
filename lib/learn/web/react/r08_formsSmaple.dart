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
        activeIndex: 8,
        topicsName: reactjsTopics,
        img: 'Reactt.png',
      ),
      body: MyPage(
        children: [
          const H1('How to handle Events in form'),
          const H3('Simple design like e-commerce design cart'),
          Code(title: 'Cart.jsx', code: code1, type: 'jsx'),
          const H3('Click Button to set name.. in Forms'),
          const Li('How to use ternary operator in conditional rendering ?'),
          const Li(
              'How to use object in useState and how to set value in Object in useState?'),
          const Li(
              'How to implement spread operator to set all default value expect that changing value'),
          Code(title: 'UserDetails.jsx', code: code2, type: 'jsx'),
          const H3('Different types to use useState'),
          Code(title: 'TextBox.jsx', code: code3, type: 'jsx'),
          const H3('How to use SingleHandler for all fields in Form?'),
          Code(title: 'TextBoxCommon.jsx', code: code4, type: 'jsx'),
        ],
      ),
    );
  }
}

var code4 = '''
import { useState } from "react";

export const TextBoxCommon = () => {
  const [user, setUser] = useState({ name: "Ram", age: 21, city: "Chennai" });

  function changeHandler(e) {
    setUser({
      ...user,
      [e.target.name]: e.target.value,
    });
    // console.log([e.target.name]);
    // console.log({ ...user, name: "sathish" });
  }

  return (
    <>
      <h2>{user.name}</h2>
      <h2>{user.age}</h2>
      <h2>{user.city}</h2>
      <form>
        <input
          type="text"
          placeholder="Enter User Name"
          name="name"
          onChange={changeHandler}
          value={user.name}
        />
        <br />
        <br />
        <input
          type="text"
          placeholder="Enter User Age"
          name="age"
          onChange={changeHandler}
          value={user.age}
        />
        <br />
        <br />
        <input
          type="text"
          placeholder="Enter User Age"
          name="city"
          onChange={changeHandler}
          value={user.city}
        />
      </form>
    </>
  );
};
''';
var code3 = '''
import { useState } from "react";

export const TextBox = () => {
  const [user, setUser] = useState({ name: "Ram", age: 21, city: "Chennai" });

  function changeName(e) {
    //1st method
    const newStateObject = { ...user };
    newStateObject.name = e.target.value;
    setUser(newStateObject);
  }

  function changeAge(e) {
    //2nd method
    setUser((oldState) => {
      return { ...oldState, age: e.target.value };
    });
  }

  function changeCity(e) {
    //3rd method
    setUser({ ...user, city: e.target.value });
  }
  return (
    <>
      <h2>{user.name}</h2>
      <h2>{user.age}</h2>
      <h2>{user.city}</h2>
      <form>
        <input
          type="text"
          placeholder="Enter User Name"
          onChange={changeName}
          value={user.name}
        />
        <br />
        <br />
        <input
          type="text"
          placeholder="Enter User Age"
          onChange={changeAge}
          value={user.age}
        />
        <br />
        <br />
        <input
          type="text"
          placeholder="Enter User Age"
          onChange={changeCity}
          value={user.city}
        />
      </form>
    </>
  );
};
''';
var code2 = '''
import { useState } from "react";

export const UserDetails = () => {
  //   const [userName, setUserName] = useState("Ram");
  //   const [userAge, setUserAge] = useState(21);

  // Object type of variable
  const [user, setUser] = useState({ name: "Ram", age: 21 });

  const updateUserName = () => {
    // setUserName("Sathish");

    // userName == "Ram" ? setUserName("Sathish") : setUserName("Ram");

    //   using spread operator to set default values expect changing value
    setUser({ ...user, name: "Sathish" });
  };
  const updateUserAge = () => {
    // setUserAge(25);

    // userAge == "21" ? setUserAge(25) : setUserAge(21);

    setUser({ ...user, age: 25 });
  };
  return (
    <>
      <h1>User Details</h1>
      <h3>{user.name}</h3>
      <h3>{user.age}</h3>
      <button onClick={updateUserName}>Update User Name</button>
      <button onClick={updateUserAge}>Update User Age</button>
    </>
  );
};
''';
var code1 = '''
import { useState } from "react";

export const Cart = () => {
  const [cartCount, setCartCount] = useState(0);
  const handleClick = () => setCartCount(cartCount + 1);
  return (
    <>
      <h1>Number of Items in the cart : {cartCount}</h1>
      <button onClick={handleClick}>{cartCount} Add to Cart</button>
    </>
  );
};
''';
