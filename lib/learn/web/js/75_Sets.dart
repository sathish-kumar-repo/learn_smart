import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Sets extends StatefulWidget {
  const Sets({Key? key}) : super(key: key);

  @override
  State<Sets> createState() => _SetsState();
}

class _SetsState extends State<Sets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 75,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Sets'),
          const P(
              'Sets are a data structure in JavaScript that allow you to store unique values of any type'),
          const TableResponsive(
            table: CTable(
              col: [
                DataColumn(
                  label: ThText('Method'),
                ),
                DataColumn(
                  label: ThText('Description'),
                ),
              ],
              row: [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('add()'),
                    ),
                    DataCell(
                      TrText('Adds a new value to the set.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('clear()'),
                    ),
                    DataCell(
                      TrText('Removes all values from the set.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('delete()'),
                    ),
                    DataCell(
                      TrText('Removes a specific value from the set.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('entries()'),
                    ),
                    DataCell(
                      TrText(
                          'Returns an iterator that contains the [value, value] pairs for each value in the set.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('forEach()'),
                    ),
                    DataCell(
                      TrText(
                          'Executes a provided function once for each value in the set, in insertion order.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('has()'),
                    ),
                    DataCell(
                      TrText(
                          'Returns an iterator that contains the values for each value in the set.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('size'),
                    ),
                    DataCell(
                      TrText('Returns the number of values in the set.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('values()'),
                    ),
                    DataCell(
                      TrText(
                          'Returns an iterator that contains the values for each value in the set.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Note('All values of data is stored in set'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const TableResponsive(
            table: CTable(
              col: [
                DataColumn(
                  label: ThText('Method'),
                ),
                DataColumn(
                  label: ThText('Description'),
                ),
              ],
              row: [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Set()'),
                    ),
                    DataCell(
                      TrText('Creates a new set.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('from()'),
                    ),
                    DataCell(
                      TrText('Creates a new set from an iterable object.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('isSet()'),
                    ),
                    DataCell(
                      TrText(
                          'Returns true if the provided value is a set; otherwise false.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('of()'),
                    ),
                    DataCell(
                      TrText(
                          'Creates a new set with a variable number of arguments.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const H3('Source Code'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('Another Working Source Code'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const Link(
              'https://www.tutorjoes.in/JS_tutorial/understanding_sets_in_javascript_a_comprehensive_guide'),
          const H2('User Defined Set Function'),
          const H3('For Example'),
          const OLi(no: 1, 'subset'),
          const OLi(no: 2, 'union'),
          const OLi(no: 3, 'difference'),
          const OLi(no: 4, 'intersection'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
        ],
      ),
    );
  }
}

var code4 = '''
/*
1. subset
2. union
3. difference
4. intersection
 */

Set.prototype.subset = function(otherset){
    if(this.size > otherset.size){
        return false;
    }else{
        for (var element of this){
            if (!otherset.has(element)) return false;
        }
        return true;
    }
};

Set.prototype.union = function(otherset){
    const unionSet = new Set();
    for (let element of this){
        unionSet.add(element);
    }
    for (let element of otherset){
        unionSet.add(element);
    }
    return unionSet;
};

Set.prototype.intersection = function(otherset){
    const intersectionSet = new Set();
    for (let element of otherset){
        if(this.has(element)){
            intersectionSet.add(element);
        }
    }
    return intersectionSet;
};

Set.prototype.difference = function(otherset){
    const differenceSet = new Set();
    for (let element of otherset){
        if(!this.has(element)){
            differenceSet.add(element);
        }
    }
    return differenceSet;
};

const setA = new Set([1,2,3]);
const setB = new Set([5,6,1,2,3,4]);
const setC = new Set([1,3,4,5]);

console.log(setA.subset(setB));
console.log(setA.subset(setC));
console.log(setC.subset(setB));

console.log(setA.union(setB));

console.log(setA.intersection(setB));

console.log(setA.difference(setB));
/*
true
false
true
Set(6) { 1, 2, 3, 5, 6, 4 }
Set(3) { 1, 2, 3 }
Set(3) { 5, 6, 4 }
*/
''';
var code3 = '''
const users = ["ram", "sathish", "ram", "sam"];
console.log(users);

const UniqueUsersSet = new Set(users);
console.log(UniqueUsersSet);

//Using spread operator convert set to array

// const UniqueUsersArray = [...UniqueUsersSet];
const UniqueUsersArray = [...new Set(users)];
console.log(UniqueUsersArray);

//To create empty set
const myset1 = new Set();
console.log(myset1);

const myset2 = new Set([1, 2, 3, 4, 5]);
console.log(myset2);
''';
var code2 = '''
// from()
const arr = [1, 2, 3, 3, 4, 5, 5];
const set1 = new Set.from(arr);
console.log(set1); // Output: Set {1, 2, 3, 4, 5}


// We can also use the from() method to create a new set from a string:
const str = "hello";
const set2 = new Set.from(str);
console.log(set2); // Output: Set {'h', 'e', 'l', 'o'}

// isSet()
const set3 = new Set([1, 2, 3]);
console.log(Set.isSet(set3)); // Output: true
const array = [1, 2, 3];
console.log(Set.isSet(array)); // Output: false

// of()
// of() method to create a new set with a variable number of arguments:
const set4 = new Set.of(1, 2, 3);
console.log(set4); // Output: Set {1, 2, 3}

// single value:
const set5 = new Set.of(1);
console.log(set5); // Output: Set {1}

// Tag Widget
// Here is the real time example for unique tag widget for website or blog.
class TagsInput {
  constructor() {
    this.tags = new Set();
  }
  addTag(newTag) {
    this.tags.add(newTag);
    console.log(this.tags);
  }
}

const input = new TagsInput();
input.addTag("Ram");
input.addTag("Sam");
input.addTag("Ram");
input.addTag("Ravi");
''';
var code1 = '''
//Function

// Creating Sets:
const mySet = new Set();

// Adding and Removing Values:
mySet.add(4);
mySet.add(4).add(5);
mySet.delete(4);

// Checking Set Size:
console.log(mySet.size); // Output: 3

// Checking for Values:
// You can check if a value exists in a set using the has() method:
console.log(mySet.has(2)); // Output: false
console.log(mySet.has(5)); // Output: true

// Iterating Over Sets:
mySet.forEach((value) => console.log(value));

// Converting Sets to Arrays:
const myArray = [...mySet];

// entries()
// Here's an example of how to use the entries() method to iterate over the [value, value] pairs for each value in a set:

const set = new Set(["apple", "banana", "cherry"]);
const iterator = set.entries();
console.log(iterator.next().value); // Output: ['apple', 'apple']
console.log(iterator.next().value); // Output: ['banana', 'banana']
console.log(iterator.next().value); // Output: ['cherry', 'cherry']
console.log(mySet);

// clear()
const NewSet = new Set([1, 2, 3]);
console.log(NewSet);
NewSet.clear();
console.log(NewSet);

// keys()
// Here's an example of how to use the keys() method to iterate over the values in a set:

const sets = new Set(["apple", "banana", "cherry"]);
const iteratorkeys = sets.keys();
console.log(iteratorkeys.next().value); // Output: 'apple'
console.log(iteratorkeys.next().value); // Output: 'banana'
console.log(iteratorkeys.next().value); // Output: 'cherry'
''';
