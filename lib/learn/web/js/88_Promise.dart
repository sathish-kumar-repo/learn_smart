import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class PromiseJS extends StatefulWidget {
  const PromiseJS({Key? key}) : super(key: key);

  @override
  State<PromiseJS> createState() => _PromiseJSState();
}

class _PromiseJSState extends State<PromiseJS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 88,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Promises'),
          const P(
              'In JavaScript, a Promise is an object that represents the eventual completion (or failure) of an asynchronous operation and its resulting value. It provides a cleaner and more efficient way to handle asynchronous code compared to traditional callback-based approaches.'),
          const P('A Promise has three states:'),
          const H2('Pending'),
          const P(
              'The initial state when a Promise is created. The asynchronous operation is still in progress, and the Promise is neither fulfilled nor rejected.'),
          const H2('Fulfilled'),
          const P(
              'The state when the asynchronous operation is completed successfully. The Promise has a resulting value associated with it, which can be accessed using the .then() method.'),
          const H2('Rejected'),
          const P(
              'The state when the asynchronous operation encounters an error or is rejected explicitly. The Promise has a reason or error associated with it, which can be accessed using the .catch() method.'),
          const P('\n'),
          const P(
              'Promises can be used to handle various asynchronous operations such as fetching data from APIs, making HTTP requests, reading/writing files, and more. Promises can be chained together using the .then() method, allowing for sequential execution of asynchronous operations. Additionally, Promises can be combined using methods like Promise.all() and Promise.race() to handle multiple asynchronous operations concurrently.'),
          const P(
              'ES6 introduced the async/await syntax, which is built on top of Promises and provides a more concise way to write asynchronous code. async functions return Promises, and await is used to pause the execution of an asynchronous function until the Promise is fulfilled or rejected.'),
          const H2('Key features of Promises in JavaScript:'),
          const Li(
              'Asynchronous handling: Promises provide a way to handle asynchronous operations in a more organized and readable manner.'),
          const Li(
              'Error handling: Promises have built-in error handling through the .catch() method, allowing for centralized error handling.'),
          const Li(
              'Chaining: Promises can be chained together using the .then() method, allowing for sequential execution of asynchronous operations.'),
          const Li(
              'Concurrency: Promises can be combined using methods like Promise.all() and Promise.race() to handle multiple asynchronous operations concurrently.'),
          const Li(
              'Compatibility: Promises are widely supported in modern JavaScript environments and can be used in both browser-based and server-side JavaScript applications.'),
          const P(
              'Overall, Promises in JavaScript provide a powerful tool for managing asynchronous code, making it more manageable, readable, and error-resistant.'),
          const H3('then()'),
          const P(
              'then() is a method available on Promise objects. It is used to attach callbacks or handlers that will be executed when a Promise is fulfilled, i.e., when the asynchronous operation associated with the Promise completes successfully.'),
          const H4('Syntax'),
          Code(title: 'syntax', code: syntax, type: 'javascript'),
          const P(
              'where promise is the Promise object, onFulfilled is a callback function that will be executed when the Promise is fulfilled, and onRejected is an optional callback function that will be executed when the Promise is rejected'),
          const P(
              'The onFulfilled callback function will receive the resolved value of the Promise as its first argument. If the Promise does not have a resolved value, onFulfilled will receive undefined. The onRejected callback function, if provided, will receive the reason or error associated with the rejected Promise as its first argument.'),
          const H3('resolve and reject'),
          const P(
              'The resolve and reject functions are provided as arguments to the Promise constructor, and they are used to fulfill or reject the Promise, respectively, when the asynchronous operation completes.'),
          const H2('More Eg'),
          const H3('Simple Eg'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          Code(title: 'console', code: code2, type: 'txt'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          Code(title: 'console', code: code4, type: 'txt'),
          const H3('Use setTimeout function in Promise'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          Code(title: 'console', code: code6, type: 'txt'),
          const Li(
              'In above Eg, setIimeout function and Promise setTimeout function returns the same result, then why we use setTimeout function in Promise, because to avoid the callback hell(timer inside timer inside timer'),
          const Li(
              'Callback hell is a phenomenon thst happens when multiple callbacks are nested on top of each other'),
          const H4('Callback hell'),
          Code(title: 'script.js', code: code7, type: 'javascript'),
          Code(title: 'console', code: code8, type: 'txt'),
          const H4(
              '(Promise Chaining)To solve the callback hell, follow this promise'),
          Code(title: 'script.js', code: code9, type: 'javascript'),
          Code(title: 'console', code: code10, type: 'txt'),
          const H4('But don\'t do this format'),
          Code(title: 'script.js', code: code11, type: 'javascript'),
          Code(title: 'console', code: code12, type: 'txt'),
          const H3('Used in addEventListener'),
          Code(title: 'script.js', code: code13, type: 'javascript'),
          Code(title: 'console', code: code14, type: 'txt'),
          const H2('To Handle Multiple Promise'),
          const H3('Using Promise.all()'),
          const Li(
              'In Promise.all(), all promise are resolve then rigger the \'then\' function and it returns single array(all promise value)'),
          const Li(
              'Suppose, any one rejection then trigger the \'catch\' function and it returns error'),
          const H4('If all are Success(resolve)'),
          Code(title: 'script.js', code: code15, type: 'javascript'),
          Code(title: 'console', code: code16, type: 'txt'),
          const H4('Suppose, any one is rejected'),
          Code(title: 'script.js', code: code17, type: 'javascript'),
          Code(title: 'console', code: code18, type: 'txt'),
          const H3('Promise.any()'),
          const OLi(
              no: 1,
              'In Promise.any(), any one promise is resolved and all are rejection, then trigger the \'then\' function and it returns msg'),
          Code(title: 'script.js', code: code19, type: 'javascript'),
          Code(title: 'console', code: code20, type: 'txt'),
          const OLi(
              no: 2,
              'Suppose, two promise or more are resolved and all are rejection, then trigger the \'then\' function and it returns first promise msg'),
          Code(title: 'script.js', code: code21, type: 'javascript'),
          Code(title: 'console', code: code22, type: 'txt'),
          const OLi(
              no: 3,
              'Suppose all are rejection, then trigger the \'catch\' function and it returns error'),
          Code(title: 'script.js', code: code23, type: 'javascript'),
          Code(title: 'console', code: code24, type: 'txt'),
          const H3('Promise.race()'),
          const Li(
              'In Promise.race(), it returns first promise, either resolve or rejection'),
          const H4('If Rejection is first'),
          Code(title: 'script.js', code: code25, type: 'javascript'),
          Code(title: 'console', code: code26, type: 'txt'),
          const H4('If Resolve is first'),
          Code(title: 'script.js', code: code27, type: 'javascript'),
          Code(title: 'console', code: code28, type: 'txt'),
          const H3('Promise.allSettled()'),
          const Li(
              'In Promise.allSettled(), \'catch\' function is not working, only \'then\' function is working'),
          const Li(
              'It returns single array of object with status, (value or reason)'),
          const Li(
              'If success it returns \'value\' otherwise it returns \'reason\''),
          Code(title: 'script.js', code: code29, type: 'javascript'),
          Code(title: 'console', code: code30, type: 'txt'),
          const H2('Used finally in promise'),
          Code(title: 'script.js', code: code31, type: 'javascript'),
          Code(title: 'console', code: code32, type: 'txt'),
          const H2('Promise Example based on getPost and getComments'),
          const H3('Both is Success'),
          Code(title: 'script.js', code: code33, type: 'javascript'),
          Code(title: 'console', code: code34, type: 'txt'),
          const H3('Any one fail'),
          Code(title: 'script.js', code: code35, type: 'javascript'),
          Code(title: 'console', code: code36, type: 'txt'),
          const H3('Both is fail'),
          Code(title: 'script.js', code: code37, type: 'javascript'),
          Code(title: 'console', code: code38, type: 'txt'),
          const H2('Real time Eg(Fetch API)'),
          Code(title: 'script.js', code: code39, type: 'javascript'),
          Code(title: 'console', code: code40, type: 'txt'),
        ],
      ),
    );
  }
}

var code40 = '''
Array(10) [ {…}, {…}, {…}, {…}, {…}, {…}, {…}, {…}, {…}, {…} ]
  0: Object { id: 1, name: "Leanne Graham", username: "Bret", … }
  1: Object { id: 2, name: "Ervin Howell", username: "Antonette", … }
  2: Object { id: 3, name: "Clementine Bauch", username: "Samantha", … }
  3: Object { id: 4, name: "Patricia Lebsack", username: "Karianne", … }
  4: Object { id: 5, name: "Chelsey Dietrich", username: "Kamren", … }
  5: Object { id: 6, name: "Mrs. Dennis Schulist", username: "Leopoldo_Corkery", … }
  6: Object { id: 7, name: "Kurtis Weissnat", username: "Elwyn.Skiles", … }
  7: Object { id: 8, name: "Nicholas Runolfsdottir V", username: "Maxime_Nienow", … }
  8: Object { id: 9, name: "Glenna Reichert", username: "Delphine", … }
  9: Object { id: 10, name: "Clementina DuBuque", username: "Moriah.Stanton", … }
''';
var code39 = '''
// fetch(http) is modern promise method and give both resolve and reject
fetch("https://jsonplaceholder.typicode.com/users")
  .then((response) => response.json())
  .then((data) => {
    console.log(data);
  })
  .catch((error) => {
    console.error(error);
  });
''';
var code38 = '''
Array(3) [ "Post-1", "Post-2", "Post-3" ] \\ In error message
''';
var code37 = '''
const getPost = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const posts = ["Post-1", "Post-2", "Post-3"];
      reject(posts);
    }, 1000);
  });
};

const getComments = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const comments = ["Comment 1", "Comment 2", "Comment 3"];
      reject(comments);
    }, 2000);
  });
};

Promise.all([getPost(), getComments()])
  .then((results) => {
    console.log(results);
    const [posts, comments] = results;
    console.log(`Posts: \${posts}`);
    console.log(`Comments: \${comments}`);
  })
  .catch((err) => {
    console.error(err);
  });
 ''';
var code36 = '''
Array(3) [ "Comment 1", "Comment 2", "Comment 3" ] \\ In error message
''';
var code35 = '''
const getPost = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const posts = ["Post-1", "Post-2", "Post-3"];
      resolve(posts);
    }, 1000);
  });
};

const getComments = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const comments = ["Comment 1", "Comment 2", "Comment 3"];
      reject(comments);
    }, 2000);
  });
};

Promise.all([getPost(), getComments()])
  .then((results) => {
    console.log(results);
    const [posts, comments] = results;
    console.log(`Posts: \${posts}`);
    console.log(`Comments: \${comments}`);
  })
  .catch((err) => {
    console.error(err);
  });
''';
var code34 = '''
Array [ (3) […], (3) […] ]
  0: Array(3) [ "Post-1", "Post-2", "Post-3" ]
  1: Array(3) [ "Comment 1", "Comment 2", "Comment 3" ]
  length: 2
  <prototype>: Array []
Posts: Post-1,Post-2,Post-3 
Comments: Comment 1,Comment 2,Comment 3
''';
var code33 = '''
const getPost = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const posts = ["Post-1", "Post-2", "Post-3"];
      resolve(posts);
    }, 1000);
  });
};

const getComments = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const comments = ["Comment 1", "Comment 2", "Comment 3"];
      resolve(comments);
    }, 2000);
  });
};

Promise.all([getPost(), getComments()])
  .then((results) => {
    console.log(results);
    const [posts, comments] = results;
    console.log(`Posts: \${posts}`);
    console.log(`Comments: \${comments}`);
  })
  .catch((err) => {
    console.error(err);
  });
''';
var code32 = '''
Error
All Completed..
''';
var code31 = '''
const promise = Promise.reject("Error");

promise
  .then((msg) => {
    console.log(msg);
  })
  .catch((err) => {
    console.error(err);
  })
  .finally(() => {
    console.log("All Completed..");
  });
''';
var code30 = '''
Array(3) [ {…}, {…}, {…} ]
  0: Object { status: "rejected", reason: "Good-1" }
  1: Object { status: "fulfilled", value: "Good-2" }
  2: Object { status: "fulfilled", value: "Good-3" }
  length: 3
''';
var code29 = '''
Promise.allSettled([
  Promise.reject("Good-1"),
  Promise.resolve("Good-2"),
  Promise.resolve("Good-3"),
])
  .then((msg) => {
    console.log(msg);
  })
  .catch((error) => {
    console.error(error);
  });
''';
var code28 = '''
Good-1  // In success message
''';
var code27 = '''
Promise.race([
  Promise.resolve("Good-1"),
  Promise.reject("Good-2"),
  Promise.resolve("Good-3"),
])
  .then((msg) => {
    console.log(msg);
  })
  .catch((error) => {
    console.error(error);
  });
 ''';
var code26 = '''
Good-1 \\ In error message(red color)
''';
var code25 = '''
Promise.race([
  Promise.reject("Good-1"),
  Promise.resolve("Good-2"),
  Promise.resolve("Good-3"),
])
  .then((msg) => {
    console.log(msg);
  })
  .catch((error) => {
    console.error(error);
  });
''';
var code24 = '''
not resolved 
AggregateError: No Promise in Promise.any was resolved
''';
var code23 = '''
Promise.any([
  Promise.reject("Error"),
  Promise.reject("Error"),
  Promise.reject("Error"),
])
  .then((msg) => {
    console.log(msg);
  })
  .catch((error) => {
    console.log("not resolved");
    console.error(error);
  });
''';
var code22 = '''
1
''';
var code21 = '''
Promise.any([
  Promise.resolve("1"),
  Promise.reject("Error"),
  Promise.resolve("3"),
])
  .then((msg) => {
    console.log(msg);
  })
  .catch((error) => {
    console.error(error);
  });
''';
var code20 = '''
1
''';
var code19 = '''
Promise.any([
  Promise.resolve("1"),
  Promise.reject("Error"),
  Promise.reject("Error"),
])
  .then((msg) => {
    console.log(msg);
  })
  .catch((error) => {
    console.error(error);
  });
''';
var code18 = '''
Error
''';
var code17 = '''
Promise.all([
  Promise.resolve("Good"),
  Promise.reject("Error"),
  Promise.resolve("Good"),
])
  .then((msg) => {
    console.log(msg);
  })
  .catch((error) => {
    console.error(error);
  });
''';
var code16 = '''
Promise { <state>: "fulfilled", <value>: "Good" }
Array(3) [ "Good", "Good", "Good" ]
''';
var code15 = '''
console.log(Promise.resolve("Good")); // Promise { <state>: "fulfilled", <value>: "Good" }

Promise.all([
  Promise.resolve("Good"),
  Promise.resolve("Good"),
  Promise.resolve("Good"),
])
  .then((msg) => {
    console.log(msg);
  })
  .catch((error) => {
    console.error(error);
  });
''';
var code14 = '''
Clicked 
click { target: button, buttons: 0, clientX: 47, clientY: 89, layerX: 47, layerY: 89 }
''';
var code13 = '''
const button = document.querySelector("button");

function addEventPromise(element, method) {
  return new Promise((resolve, reject) => {
    element.addEventListener(method, resolve);
  });
}

addEventPromise(button, "click").then((e) => {
  console.log("Clicked");
  console.log(e); // event property
});
''';
var code12 = '''
Normal : 1 
Normal SetTime : 1 
Normal : 2 
Normal SetTime : 2 
Normal : 3 
Normal SetTime : 3
''';
var code11 = '''
function setTimeoutPromise(duration) {
  return new Promise((resolve, reject) => {
    setTimeout(resolve, duration);
  });
}

setTimeoutPromise(250).then(() => {
  console.log("Normal SetTime : 1");

  setTimeoutPromise(250).then(() => {
    console.log("Normal SetTime : 2");

    setTimeoutPromise(250).then(() => {
      console.log("Normal SetTime : 3");
    });
  });
});
''';
var code10 = '''
Normal : 1 
Cool Promise : 1 
Normal : 2 
Cool Promise : 2 
Normal : 3 
Cool Promise : 3
''';
var code9 = '''
function setTimeoutPromise(duration) {
  return new Promise((resolve, reject) => {
    setTimeout(resolve, duration);
  });
}

setTimeoutPromise(250)
  .then(() => {
    console.log("Cool Promise : 1");
    return setTimeoutPromise(250);
  })
  .then(() => {
    console.log("Cool Promise : 2");
    return setTimeoutPromise(250);
  })
  .then(() => {
    console.log("Cool Promise : 3");
  });
''';
var code8 = '''
Normal : 1 
Normal : 2 
Normal : 3
''';
var code7 = '''
setTimeout(() => {
  console.log("Normal : 1");

  setTimeout(() => {
    console.log("Normal : 2");

    setTimeout(() => {
      console.log("Normal : 3");
    }, 250);
  }, 250);
}, 250);
''';
var code6 = '''
Hi 
Joes
''';
var code5 = '''
// setIimeout function
setTimeout(() => {
  console.log("Hi");
}, 250);

// Promise setTimeout function
function setTimeoutPromise(duration) {
  return new Promise((resolve, reject) => {
    setTimeout(resolve, duration);
  });
}
setTimeoutPromise(250).then(() => {
  console.log("Joes");
});

// promise = setTimeoutPromise(250);
// promise.then(() => {
//   console.log("Joes");
// });
''';
var code4 = '''
Error
''';
var code3 = '''
const promise = new Promise((resolve, reject) => {
  const sum = 2 + 1;
  if (sum == 2) {
    resolve("Success");
  } else {
    reject("Error");
  }
});

promise
  .then((msg) => {
    console.log(msg);
  })
  .catch((error) => {
    console.error(error);
  });
''';
var code2 = '''
Success
''';
var code1 = '''
const promise = new Promise((resolve, reject) => {
  const sum = 1 + 1;
  if (sum == 2) {
    resolve("Success");
  } else {
    reject("Error");
  }
});

promise
  .then((msg) => {
    console.log(msg);
  })
  .catch((error) => {
    console.error(error);
  });
''';
var syntax = '''
promise.then(onFulfilled, onRejected);
''';
