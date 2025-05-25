import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_program/topicName/pythonProgramTopic.dart';

class PyDateTime extends StatefulWidget {
  const PyDateTime({Key? key}) : super(key: key);

  @override
  State<PyDateTime> createState() => _PyDateTimeState();
}

class _PyDateTimeState extends State<PyDateTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: pythonProgramTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Python : Datetime - Exercises'),
          const H3(
              '1. Write a Python program to get the first and last second'),
          Code(title: 'main.py', code: code1, type: 'python'),
          const H3('2. Write a Python program to generate RFC 3339 timestamp'),
          Code(title: 'main.py', code: code2, type: 'python'),
          const H3(
              '3. Write a Python program to validate a Gregorian date. The month is between 1 and 12 inclusive, the day is within the allowed number of days for the given month. Leap year’s are taken into consideration. The year is between 1 and 32767 inclusive'),
          Code(title: 'main.py', code: code3, type: 'python'),
          const H3(
              '4. Write a Python program to drop microseconds from datetime'),
          Code(title: 'main.py', code: code4, type: 'python'),
          const H3('5. Write a Python program to get days between two dates'),
          Code(title: 'main.py', code: code5, type: 'python'),
          const H3(
              '6. Write a Python program to get the date of the last Tuesday'),
          Code(title: 'main.py', code: code6, type: 'python'),
          const H3(
              '7. Write a Python program to test the third Monday of a month'),
          Code(title: 'main.py', code: code7, type: 'python'),
          const H3(
              '8. Write a Python program to get the last day of a specified year and month'),
          Code(title: 'main.py', code: code8, type: 'python'),
          const H3(
              '9. Write a Python program to get the number of days of a given month and year'),
          Code(title: 'main.py', code: code9, type: 'python'),
          const H3(
              '10. Write a Python program to add a month with a specified date'),
          Code(title: 'main.py', code: code10, type: 'python'),
          const H3(
              '11. Write a Python program to count the number of Monday of the 1st day of the month from 2014 to 2022'),
          Code(title: 'main.py', code: code11, type: 'python'),
          const H3(
              '12. Write a Python program to print a string ten times, delay two seconds'),
          Code(title: 'main.py', code: code12, type: 'python'),
          const H3(
              '13. Write a Python program calculates the date six months from the current date using the datetime module'),
          Code(title: 'main.py', code: code13, type: 'python'),
          const H3(
              '14. Write a Python program to create 12 fixed dates from a specified date over a given period. The difference between two dates will be 20'),
          Code(title: 'main.py', code: code14, type: 'python'),
          const H3(
              '15. Write a Python program to get the dates 30 days before and after from the current date'),
          Code(title: 'main.py', code: code15, type: 'python'),
          const H3(
              '16. Write a Python program to get the GMT and local current time'),
          Code(title: 'main.py', code: code16, type: 'python'),
          const H3('17. Write a Python program convert a date to timestamp'),
          Code(title: 'main.py', code: code17, type: 'python'),
          const H3(
              '18. Write a Python program convert a string date to the timestamp'),
          Code(title: 'main.py', code: code18, type: 'python'),
          const H3(
              '19. Write a Python program to calculate a number of days between two dates'),
          Code(title: 'main.py', code: code19, type: 'python'),
          const H3(
              '20. Write a Python program to display the date and time in a human-friendly string'),
          Code(title: 'main.py', code: code20, type: 'python'),
          const H3(
              '21. Write a Python program to convert a date to Unix timestamp'),
          Code(title: 'main.py', code: code21, type: 'python'),
          const H3(
              '22. Write a Python program to calculate two date difference in seconds'),
          Code(title: 'main.py', code: code22, type: 'python'),
          const H3(
              '23. Write a Python program to convert two date difference in days, hours, minutes, seconds'),
          Code(title: 'main.py', code: code23, type: 'python'),
          const H3('24. Write a Python program to calculate an age in year'),
          Code(title: 'main.py', code: code24, type: 'python'),
          const H3(
              '25.  Write a Python program to get the current date time information'),
          Code(title: 'main.py', code: code25, type: 'python'),
          const H3(
              '26. Write a python program to generate a date and time as a string'),
          Code(title: 'main.py', code: code26, type: 'python'),
          const H3(
              '27. Write a Python program to print a calendar for an entire year'),
          Code(title: 'main.py', code: code27, type: 'python'),
          const H3('28. Write a Python program to print a calendar for month'),
          Code(title: 'main.py', code: code28, type: 'python'),
          const H3('29. Write a Python program to get the current week'),
          Code(title: 'main.py', code: code29, type: 'python'),
          const H3(
              '30. Write a Python program to create a HTML calendar with data for a specific year and month'),
          Code(title: 'main.py', code: code30, type: 'python'),
          const H3(
              '31. Write a Python program display a list of the dates for the 2nd Friday of every month for a given year'),
          Code(title: 'main.py', code: code31, type: 'python'),
          const H3(
              '32. Write a Python program to display a simple, formatted calendar of a given year and month'),
          Code(title: 'main.py', code: code32, type: 'python'),
          const H3(
              '33. Write a Python program to convert a string into datetime'),
          Code(title: 'main.py', code: code33, type: 'python'),
          const H3(
              '34. Write a Python program to get a list of dates between two dates'),
          Code(title: 'main.py', code: code34, type: 'python'),
          const H3(
              '35. Write a Python program to print yesterday, today, tomorrow'),
          Code(title: 'main.py', code: code35, type: 'python'),
          const H3(
              '36. Write a Python program to convert the date to datetime (midnight of the date) in Python'),
          Code(title: 'main.py', code: code36, type: 'python'),
          const H3(
              '37. Write a Python program to print next 5 days starting from today'),
          Code(title: 'main.py', code: code37, type: 'python'),
          const H3(
              '38. Write a Python program to add 5 seconds with the current time'),
          Code(title: 'main.py', code: code38, type: 'python'),
          const H3(
              '39. Write a Python program to convert Year/Month/Day to Day of Year in python'),
          Code(title: 'main.py', code: code39, type: 'python'),
          const H3(
              '40. Write a Python program to get current time in milliseconds in python'),
          Code(title: 'main.py', code: code40, type: 'python'),
          const H3(
              '41. Write a Python program to subtract Three days from current date.'),
          Code(title: 'main.py', code: code41, type: 'python'),
          const H3('42. Write a Python program to get the current time'),
          Code(title: 'main.py', code: code42, type: 'python'),
          const H3(
              '43. Write a Python program to convert a string to datetime'),
          Code(title: 'main.py', code: code43, type: 'python'),
          const H3(
              '44. Write a Python program to determine whether a given year is a leap year'),
          Code(title: 'main.py', code: code44, type: 'python'),
          const H3(
              '45. Write a Python program to select all the Sundays of a specified year'),
          Code(title: 'main.py', code: code45, type: 'python'),
          const H3(
              '46. Write a Python program to Add five days from current date'),
          Code(title: 'main.py', code: code46, type: 'python'),
          const H3(
              '47. Write a Python program to find the date of the first Monday of a given week'),
          Code(title: 'main.py', code: code47, type: 'python'),
          const H3(
              '48. Write a Python program to find the born in the previous millennium or during this millennium given Birthday date'),
          Code(title: 'main.py', code: code48, type: 'python'),
          const H3(
              '49. Write a Python program to Print hour, minute, second, microsecond, day, month, year Given datetime'),
          Code(title: 'main.py', code: code49, type: 'python'),
          const H3(
              '50. Write a Python script to display the various Date Time String formats'),
          P(pNote),
          Code(title: 'main.py', code: code50, type: 'python'),
        ],
      ),
    );
  }
}

var pNote = '''
  1. Current date and time
  2. Current Date
  3. Current year
  4. Month of year
  5. Week number of the year
  6. Weekday of the week
  7. Day of year
  8. Day of the month
  9. Day of week
  10. Current Time
  11. Current Hour
  12. Current Minute
  13. Current PM / AM
  14. Local Version Date
  15. Local Version Time
''';
var code50 = '''

''';
var code49 = '''

''';
var code48 = '''

''';
var code47 = '''

''';
var code46 = '''

''';
var code45 = '''

''';
var code44 = '''

''';
var code43 = '''

''';
var code42 = '''

''';
var code41 = '''

''';
var code40 = '''

''';
var code39 = '''

''';
var code38 = '''

''';
var code37 = '''

''';
var code36 = '''

''';
var code35 = '''

''';
var code34 = '''

''';
var code33 = '''

''';
var code32 = '''

''';
var code31 = '''

''';
var code30 = '''

''';
var code29 = '''

''';
var code28 = '''

''';
var code27 = '''

''';
var code26 = '''

''';
var code25 = '''

''';
var code24 = '''

''';
var code23 = '''

''';
var code22 = '''

''';
var code21 = '''

''';
var code20 = '''

''';
var code19 = '''

''';
var code18 = '''

''';
var code17 = '''

''';
var code16 = '''

''';
var code15 = '''

''';
var code14 = '''

''';
var code13 = '''

''';
var code12 = '''

''';
var code11 = '''

''';
var code10 = '''

''';
var code9 = '''

''';
var code8 = '''

''';
var code7 = '''

''';
var code6 = '''

''';
var code5 = '''

''';
var code4 = '''

''';
var code3 = '''

''';
var code2 = '''

''';
var code1 = '''

''';
