import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class EventLoop extends StatefulWidget {
  const EventLoop({Key? key}) : super(key: key);

  @override
  State<EventLoop> createState() => _EventLoopState();
}

class _EventLoopState extends State<EventLoop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 91,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1(
              'Understanding the Event Loop in JavaScript: Asynchronous Execution Made Simple'),
          const P(
              'The event loop is a fundamental mechanism in JavaScript that enables asynchronous behavior and ensures smooth execution of code without blocking the main thread. It is at the core of JavaScript\'s concurrency model and plays a crucial role in handling events, executing callbacks, and managing asynchronous operations.'),
          const P(
              'Here\'s a step-by-step explanation of how the event loop works in JavaScript:'),
          const H3('1. Execution Stack:'),
          const P(
              'When JavaScript code is executed, it maintains a stack called the execution stack. It keeps track of the currently running function or task.'),
          const H3('2. Task Queue:'),
          const P(
              'Alongside the execution stack, there is a task queue, also known as the callback queue or message queue. It holds tasks or events that are ready to be processed. These tasks can include timers, network requests, user interactions, and other asynchronous operations.'),
          const H3('3. Event-Driven Architecture:'),
          const P(
              'JavaScript is designed as an event-driven language. Events can be triggered by various sources, such as user actions (e.g., clicks), timers, or network responses. When an event occurs, a corresponding callback function (also known as an event handler) is generated and placed in the task queue.'),
          const H3('4. Event Loop:'),
          const P(
              'The event loop is a continuous process that checks two main entities the execution stack and the task queue.'),
          const H3('5. Event Loop Process:'),
          const Li(
              'If the execution stack is empty and there are tasks in the task queue, the event loop moves the tasks from the task queue to the execution stack, starting with the oldest task.'),
          const Li(
              'The task in the execution stack is processed, and its associated function is executed.'),
          const Li(
              'While executing the function, if additional asynchronous tasks are encountered (e.g., AJAX requests or setTimeout), they are registered, and their corresponding callbacks are placed in the task queue.'),
          const Li(
              'Once the function execution is complete, it is removed from the execution stack.'),
          const Li(
              'The event loop repeats the process by checking the execution stack and the task queue.'),
          const H3('6. Non-Blocking Nature:'),
          const P(
              'The event loop ensures that JavaScript remains non-blocking. This means that while asynchronous operations are being performed, the main thread is free to handle other tasks or respond to user interactions without waiting for the completion of those asynchronous tasks.'),
          const P(
              '\nBy leveraging the event loop, JavaScript can efficiently handle concurrency, process asynchronous operations, and create responsive web applications. Understanding how the event loop works is crucial for writing efficient and per formant JavaScript code.'),
          const Img(name: 'gec.jpg', height: 300),
          const H2('Global Execution Context'),
          const P(
              'The global execution context is a fundamental concept in JavaScript that represents the environment in which the global JavaScript code is executed. It is created automatically when a JavaScript program starts running and serves as the initial context for executing the code.'),
          const P(
              'Here are some key points to understand about the global execution con '),
          const H3('1. Creation:'),
          const P(
              'When a JavaScript program begins execution, the global execution context is created. It consists of two main components: the global object and the this value.'),
          const H3('2. Global Object:'),
          const P(
              'The global object serves as the global scope in JavaScript. In a web browser environment, the global object is typically the window object. It provides access to various properties and methods that are available globally, such as console, setTimeout, Math, and more.'),
          const H3('3. Global Scope:'),
          const P(
              'The global execution context establishes the global scope, which is the outermost scope in JavaScript. Variables and functions declared outside of any function are placed in the global scope and can be accessed from anywhere within the code.'),
          const H3('4. this Value:'),
          const P(
              'The this value in the global execution context refers to the global object. In a web browser, this inside the global context points to the window object.'),
          const H3('5. Hoisting:'),
          const P(
              'During the creation of the global execution context, JavaScript hoists variable declarations and function declarations to the top of their respective scopes. This means that regardless of where variables and functions are declared in the code, they are conceptually moved to the top of the global scope.'),
          const H3('6. Execution:'),
          const P(
              'Once the global execution context is created, JavaScript starts executing the code line by line, following the order of statements. As the code executes, variables are initialized, functions are registered, and executable code is run.'),
          const H3('7. Global Variables and Functions:'),
          const P(
              'Variables and functions declared in the global scope are accessible from any part of the codebase, including nested functions or other execution contexts.'),
          const H3(
              '8. Global Execution Context and Function Execution Contexts'),
          const P(
              ' Whenever a function is invoked, a new function execution context is created and added to the execution stack. These function execution contexts have their own variable environments and are nested within the global execution context.'),
          const P(
              '\nUnderstanding the global execution context is crucial for comprehending how JavaScript manages variables, functions, and scope throughout the code execution process. It sets the foundation for the creation of other execution contexts and plays a vital role in scoping and variable access within a JavaScript program.'),
          const H3(''),
          const P(''),
          const H3(''),
          const P(''),
          const P(''),
          Code(title: 'script.js', code: code1, type: 'javascript'),
        ],
      ),
    );
  }
}

var code = '''''';
var code1 = '''''';
