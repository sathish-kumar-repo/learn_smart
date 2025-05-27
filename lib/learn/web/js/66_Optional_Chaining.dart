import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Optional_Chaining extends StatefulWidget {
  const Optional_Chaining({Key? key}) : super(key: key);

  @override
  State<Optional_Chaining> createState() => _Optional_ChainingState();
}

class _Optional_ChainingState extends State<Optional_Chaining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 66,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Optional Chaining'),
          const P(
              'Optional chaining is a feature introduced in JavaScript ES2020 that allows developers to access properties of an object without having to check if the object or its properties exist. It is represented by the ?. operator.'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript'),
          const P(
              'The optional chaining operator allows you to check if the objects and its properties exist without having to check them explicitly, which can make the code more concise and readable. If any of the properties or objects in the chain don\'t exist, the expression will return undefined instead of throwing a TypeError.'),
          const Note(
              'It\'s important to note that the optional chaining only applies to the part of the expression immediately to the right of the ?. operator, so if a property is accessed with the optional chaining operator and that property itself is undefined, the expression will still throw a TypeError.'),
          const P(
              'In conclusion, optional chaining operator that allows developers to access properties of an object without having to check if the object or its properties exist. It is represented by the ?. operator and makes the code more concise and readable. By using the optional chaining operator, you can check if the objects and its properties exist without having to check them explicitly. If any of the properties or objects in the chain don\'t exist, the expression will return undefined instead of throwing a TypeError. It\'s a useful tool for working with complex data structures and can help prevent potential errors in your code.'),
        ],
      ),
    );
  }
}

var code = '''
// Navigating Complex Data Structures with Optional Chaining
const user1 = {
  name: "Sathish",
  address: {
    city: "Salem",
  },
};

console.log(user1);
// console.log(user1.address) //This is error
// console.log(user1.address.city) //This is error

// How to handling this error

// in normal method
const user2 = {
  name: "Sathish",
  // address:{
  //     city:"Salem"
  // }
};

// Option-1
console.log(user2.address ? user2.address.city : undefined);

// Option-2
console.log(user2.address && user2.address.city);

// Option-3 is optional chaining
console.log(user2.address?.city);

// Option-4
let key = "city";
console.log(user2.address?.[key]);

const user = {
  firstName: "Tutor",
  lastName: "Joes",
  address: {
    street: "Cherry Road",
    city: "salem",
    contact: "9043017689",
  },
};

console.log(user?.firstName);
console.log(user?.address?.contact);

// Optional chaining is only used for read and delete only not allow to assign new key
// For example

// user?.newname = "Sathish" // error

console.log(user);
''';
