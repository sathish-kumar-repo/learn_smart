# # lst = [
# #     'Python Introduction',
# #     'Keywords',
# #     'Variables',
# #     'Input Function',
# #     'Single and Multiline Commend',
# #     'Type Casting',
# #     'String Manipulation',
# #     'Arithmetic Operators',
# #     'Assignment Operators',
# #     'Comparison Operators or Relational Operators',
# #     'Logical Operators',
# #     'Bitwise Operators',
# #     'Identity Operators',
# #     'Membership operators',
# #     'IF Statement',
# #     'IF - Else Statement',
# #     'Elif Statement',
# #     'Nested If Statement',
# #     'While Loop',
# #     'Continue using While Loop',
# #     'Break using While Loop',
# #     'Range in Python',
# #     'For Loop',
# #     'Nested For Loop',
# #     'While Else and For Else',
# #     'List',
# #     'Tuple',
# #     'Set',
# #     'Dictionary',
# #     'Functions and Types',
# #     'Try Block',
# #     'Class and Object',
# #     'Class Attributes',
# #     'Instance Attributes',
# #     'Class Method',
# #     'Instance Method',
# #     'Init Method',
# #     'Property Decorator',
# #     'Property Decorator Getter Setter',
# #     'Property Method',
# #     'Class Method Decorator',
# #     'Static Method',
# #     'Abstraction and Encapsulation',
# #     'Single Inheritance',
# #     'Multiple Inheritance',
# #     'Multilevel Inheritance',
# #     'Function Overriding',
# #     'Handling Diamond Problem in Python',
# #     'Operator Overloading',
# #     'Abstract Base Class',
# #     'Open a File',
# #     'Delete a File',
# # ]

# # for j,i in enumerate(lst):
# #     new=i.replace(' ', '_')
# #     f = open(f"Python{j+1}_{new}.dart", "a")
# #     f.write("""
# # import 'package:flutter/material.dart';
# # import 'package:learn_smart/CustomWidgets/CustomCodeHighlighter.dart';
# # import 'package:learn_smart/CustomWidgets/MyPage.dart';
# # import 'package:learn_smart/CustomWidgets/MyDrawer.dart';
# # import 'package:learn_smart/CustomWidgets/standardWidget.dart';
# # import 'package:learn_smart/CustomWidgets/appBar.dart';
# # import 'package:learn_smart/learn/Course7_Python/topicName/pythonTopics.dart';


# # class """+new+""" extends StatefulWidget {
# #   const """+new+"""({Key? key}) : super(key: key);

# #   @override
# #   State<"""+new+"""> createState() => _"""+new+"""State();
# # }

# # class _"""+new+"""State extends State<"""+new+"""> {

# #   @override
# #   Widget build(BuildContext context) {
# #     return Scaffold(
# #       appBar: const MyAppBar(),
# #       drawer: MyDrawer(
# #         activeIndex: """+str(j+1)+""",
# #         topicsName: PythonTopics,
# #         img: 'Python.png',
# #         contain: true,
# #       ),
# #       body: MyPage(
# #          children: [
# #           const H1(  '"""+i+"""'),
# #         ],
# #       ),
# #     );
# #   }
# # }
# # """)
for i in range(1, 7):
    # lib\learn\Course15_FJ\RootWord\test.dart
    print(
        f"import 'package:learn_smart/learn/Course15_FJ/ImportantWords_Challenging/importantWords_Challenging{i}.dart';"
    )
    # print(f"Topics('Important Words-{i}', const importantWordsChallenging{i}(), 'Challenging level'),")
    # print(f"Search('Important Words-{i}', const importantWordsChallenging{i}()),")
#     f = open(f"lib/learn/Course15_FJ/ImportantWords_Challenging/importantWords_Challenging{i}.dart", "w")
#     i=str(i)
#     f.write("""
# import 'package:flutter/material.dart';
# import 'package:learn_smart/CustomWidgets/MyPage.dart';
# import 'package:learn_smart/CustomWidgets/MyDrawer.dart';
# import 'package:learn_smart/CustomWidgets/standardWidget.dart';
# import 'package:learn_smart/CustomWidgets/appBar.dart';
# import 'package:learn_smart/learn/Course15_FJ/ImportantWords_Challenging/topicName/ImportantWords_Challenging.dart';


# class importantWordsChallenging"""+i+""" extends StatefulWidget {
#   const importantWordsChallenging"""+i+"""({Key? key}) : super(key: key);

#   @override
#   State<importantWordsChallenging"""+i+"""> createState() => _importantWordsChallenging"""+i+"""State();
# }

# class _importantWordsChallenging"""+i+"""State extends State<importantWordsChallenging"""+i+"""> {

#   @override
#   Widget build(BuildContext context) {
#      return Scaffold(
#       appBar: const MyAppBar(),
#       drawer: MyDrawer(
#         activeIndex: """+i+""",
#         topicsName: importantWordChallengingTopics,
#         img: 'important.png',
#         contain: true,
#       ),
#       body: const MyPage(
#          children: [
#           H1(  'Important Words Level - """+i+"""'),
#           H3(  'Word'),
#           li(  ''),
#           H3(  'Type'),
#           li(  ''),
#           H3(  'Explanation'),
#           li(  ''),
#           H3(  'Image'),
#           Img(name: 'jet.jpg' ),
#         ],
#       ),
#     );
#   }
# }
# """)
# # for j,i in enumerate(lst):
# #     new=i.replace(' ', '_')
# #     # print(f"Topics('{i}', const {new}(), ''),")
# #     # print(f"import 'package:learn_smart/learn/Course7_Python/Python{j+1}_{new}.dart';")
# #     # print(f"Search('{i}', const {new}()),")
# #     print(f"import 'package:learn_smart/learn/Course7_Python/Python{j+1}_{new}.dart';")

# # ---------------------------------------------------------------------------------------


# # -----------------------------------------------------------------------------------


# [
#     "C Introduction",
#     "Hello World Program",
#     "Basic Addition",
#     "Data Types",
#     "Variables and Literals",
#     "Operators in C",
#     "Conditional Statement",
#     "Looping Statement",
#     "ASCII Values",
#     "Arrays",
#     "String Functions",
#     "Math Functions",
#     "Functions",
#     "Local Global Static",
#     "Enumeration or enum",
#     "Single Pointer",
#     "Double and Trible Pointer",
#     "Pointer Arithmetic",
#     "Pointer Handle Array Values",
#     "Void Pointer",
#     "Malloc Functions",
#     "Calloc Functions",
#     "Realloc Functions",
#     "Free Functions",
#     "Dangling Pointer",
#     "Using Const in Pointer",
#     "Structure in C",
#     "Local and Global Structure",
#     "Typedef",
#     "Initializing and Accessing the Structure Members",
#     "Accessing Structure Members Using Pointers",
#     "Passing Structures as Function Arguments",
#     "Creating an Array of Structures",
#     "Union",
#     "Optimizing Memory Usage with Nested Unions",
#     "Input and Output Functions",
#     "Preprocessor Directives",
#     "Read File",
#     "Write File",
# ]

# [
#     "Introduction of CSV file",
#     "Creating CSV File That contains Comma With Data",
#     "Creating CSV File That contains Double Quotes With Data",
#     "Rules to be followed to format data in a CSV file",
#     "Create A CSV File Using Microsoft Excel",
#     "Microsoft Excel to open a CSV file",
#     "Read and write a CSV file Using Python",
#     "Python File Modes",
#     "CSV Modules Reader Function",
#     "CSV file with default delimiter comma",
#     "CSV files - data with Spaces at the beginning",
#     "CSV File-Data With Quotes",
#     "CSV files with Custom Delimiters",
#     "Read a specific column In a File",
#     "Read A CSV File And Store It In A List",
#     "Read A CSV File And Store A Column Value In A List For Sorting",
#     "Sorting A CSV File With A Specified Column",
#     "Reading CSV File Into A Dictionary",
#     "Reading CSV File With User Defined Delimiter Into A Dictionary",
#     "Writing Data Into Different Types in Csv Files",
#     "Creating A New Normal CSV File",
#     "Modifying An Existing File",
#     "ADDING NEW ROW",
#     "CSV Files With Quotes",
#     "CSV Files With Custom Delimiters",
#     "CSV File With A Line Terminator",
#     "CSV File with quote characters",
#     "Writing CSV File Into A Dictionary",
#     "Writing Dictionary Into CSV File With Custom Dialects",
#     "Getting Data At Runtime And Writing It In a CSV File",
# ]

# tcss = [
#     "Aspect Radio",
#     "Container",
#     "Columns",
#     "Break After",
#     "Break Inside",
#     "Box Decoration Break",
#     "Box Sizing",
#     "Display",
#     "Floats",
#     "Clear",
#     "Isolation",
#     "Object Fit",
#     "Object Position",
#     "Overflow",
#     "Overscroll Behaviour",
#     "Position",
#     "Top  Right  Bottom  Left",
#     "Visibility",
#     "z-index",
#     "Flex Basis",
#     "Flex Direction",
#     "Flex Wrap",
#     "Flex",
#     "Flex Grow",
#     "Flex Shrink",
#     "Order",
#     "Grid Template Columns",
#     "Grid Column Start  End",
#     "Grid Template Rows",
#     "Grid Row Start  End",
#     "Grid Auto Flow",
#     "Grid Auto Columns",
#     "Grid Auto Rows",
#     "Gap",
#     "Justify Content",
#     "Justify Items",
#     "Justify Self",
#     "Align Content",
#     "Align Items",
#     "Align Self",
#     "Place Content",
#     "Place Items",
#     "Place Self",
#     "Padding",
#     "Margin",
#     "Space Between",
#     "Width",
#     "Max Width",
#     "Min Width",
#     "Height",
#     "Max Height",
#     "Min Height",
#     "Font Family",
#     "Font Size",
#     "Font Smoothing",
#     "Font Style",
#     "Font Weight",
#     "Font Variant Numeric",
#     "Letter Spacing",
#     "Line Clamp",
#     "Line Height",
#     "List Style Image",
#     "List Style Position",
#     "List Style Align",
#     "Text Align",
#     "Text Color",
#     "Text Decoration",
#     "Text Decoration Color",
#     "Text Decoration Style",
#     "Text Decoration Thickness",
#     "Text Underline Offset",
#     "Text Transform",
#     "Text Overflow",
#     "Text Indent",
#     "Verical Align",
#     "Whitespace",
#     "Word Break",
#     "Hyphens",
#     "Content",
#     "Background Attachment",
#     "Background Clip",
#     "Background Color",
#     "Background Origin",
#     "Background Position",
#     "Background Repeat",
#     "Background Size",
#     "Background Image",
#     "Gradient Color Stops",
#     "Border Radius",
#     "Border width",
#     "Border Color",
#     "Border Style",
#     "Divide Width",
#     "Divide Color",
#     "Divide Style",
#     "Outline Width",
#     "Outline Color",
#     "Outline Style",
#     "Outline Offset",
#     "Ring Width",
#     "Ring Color",
#     "Ring Offset Width",
#     "Ring Offset Color",
#     "Box Shadow",
#     "Box Shadow Color",
#     "Opacity",
#     "Mix Blend Mode",
#     "Background Blend Mode",
#     "Blur",
#     "Brightness",
#     "Contrast",
#     "Drop Shadow",
#     "Grayscale",
#     "Hue Rotate",
#     "Invert",
#     "Saturate",
#     "Sepia",
#     "Backdrop Blur",
#     "Backdrop Brightness",
#     "Backdrop Contrast",
#     "Backdrop Grayscale",
#     "Backdrop Hue Rotate",
#     "Backdrop Invert",
#     "Backdrop Opacity",
#     "Backdrop Saturate",
#     "Backdrop Sepia",
#     "Border Collapse",
#     "Border Spacing",
#     "Table Layout",
#     "Caption Side",
#     "Transition Property",
#     "Transition Duration",
#     "Transition Timing Function",
#     "Transition Delay",
#     "Animation",
#     "Scale",
#     "Rotate",
#     "Translate",
#     "Skew",
#     "Transform Orgin",
#     "Accent Color",
#     "Appearance",
#     "Cursor",
#     "Caret Color",
#     "Pointer Events",
#     "Resize",
#     "Scroll Behaviour",
#     "Scroll Margin",
#     "Scroll Padding",
#     "Scroll Snap Align",
#     "Scroll Snap Stop",
#     "Scroll Snap Type",
#     "Touch Action",
#     "User Select",
#     "Will Change",
#     "Fill",
#     "Stroke",
#     "Stroke 'width",
#     "Screen Readers",
#     "Typography",
#     "Forms",
#     "Aspect Radio",
#     "Container Queries",
# ]
# for i in tcss:
#     print(i)
# lst = ["test"]
# for j,i in enumerate(tcss):
# new=i.replace(' ', '_')
# print(f"Topics('{i}', const {new}_TailwindCSSAndCSS(), ''),")


# print(f"import 'package:learn_smart/learn/Course14_TailwindCSS/TailwindCSS_and_CSS{j+1}_{new}.dart';")
# print(f"Search('{i}', const {new}_TailwindCSSAndCSS()),")
# print(f"import 'package:learn_smart/learn/Course7_Python/Python{j+1}_{new}.dart';")

# lst = ["test"]
# for j, i in enumerate(tcss):
#     new = i.replace(" ", "_")
#     f = open(
#         f"lib//learn//Course14_TailwindCSS//TailwindCSS_and_CSS{j+1}_{new}.dart", "w"
#     )
#     f.write(
#         """
# import 'package:flutter/material.dart';
# import 'package:learn_smart/CustomWidgets/CustomCodeHighlighter.dart';
# import 'package:learn_smart/CustomWidgets/MyPage.dart';
# import 'package:learn_smart/CustomWidgets/MyDrawer.dart';
# import 'package:learn_smart/CustomWidgets/standardWidget.dart';
# import 'package:learn_smart/CustomWidgets/appBar.dart';
# import 'package:learn_smart/learn/Course14_TailwindCSS/topicName/TailwindcssAndCSSTopics.dart';

# class """
#         + new
#         + """_TailwindCSSAndCSS extends StatefulWidget {
#   const """
#         + new
#         + """_TailwindCSSAndCSS({Key? key}) : super(key: key);

#   @override
#   State<"""
#         + new
#         + """_TailwindCSSAndCSS> createState() => _"""
#         + new
#         + """_TailwindCSSAndCSSState();
# }

# class _"""
#         + new
#         + """_TailwindCSSAndCSSState extends State<"""
#         + new
#         + """_TailwindCSSAndCSS> {
#   @override
#   Widget build(BuildContext context) {
#     return Scaffold(
#       appBar: const MyAppBar(),
#       drawer: MyDrawer(
#         activeIndex: """
#         + str(j + 1)
#         + """,
#         topicsName: TailwindCSSAndCSSTopics,
#         img: 'tailwindcsst.jpg',
#       ),
#       body: MyPage(
#          children: [
#           const H1(  '"""
#         + i
#         + """'),
#           const p(  ''),
#           const H3(  'Original CSS Code'),
#           Code(title: 'style.css', code: code1, type: 'css'),
#           const H4(  'Output'),
#           const Img(name: 'name1.png' ),
#           const H3(  'Tailwind CSS Code'),
#           Code(title: 'tailwind.css', code: code2, type: 'css'),
#           const H4(  'Output'),
#           const Img(name: 'name2.png' ),
#           const a( ''),
#         ],
#       ),
#     );
#   }
# }

# var code2 = '''''';
# var code1 = '''''';
# """
#     )
#     f.write("""
# import 'package:flutter/material.dart';
# import 'package:learn_smart/CustomWidgets/CustomCodeHighlighter.dart';
# import 'package:learn_smart/CustomWidgets/MyPage.dart';
# import 'package:learn_smart/CustomWidgets/MyDrawer.dart';
# import 'package:learn_smart/CustomWidgets/standardWidget.dart';
# import 'package:learn_smart/CustomWidgets/appBar.dart';
# import 'package:learn_smart/learn/Course7_Python/topicName/pythonTopics.dart';


# class """+new+""" extends StatefulWidget {
#   const """+new+"""({Key? key}) : super(key: key);

#   @override
#   State<"""+new+"""> createState() => _"""+new+"""State();
# }

# class _"""+new+"""State extends State<"""+new+"""> {

#   @override
#   Widget build(BuildContext context) {
#     return Scaffold(
#       appBar: const MyAppBar(),
#       drawer: MyDrawer(
#         activeIndex: """+str(j+1)+""",
#         topicsName: PythonTopics,
#         img: 'Python.png',
#         contain: true,
#       ),
#       body: MyPage(
#          children: [
#           const H1(  '"""+i+"""'),
#         ],
#       ),
#     );
#   }
# }
# """)
