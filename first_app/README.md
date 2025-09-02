# Flutter-Dart-portfolio
1. What is Flutter and Dart?
2. What is named and positional parameter?
3. What is run time and compile time constants?
    const - compile time constants. constant value know at compile timeitself
    final - run time constants. constant value known at run time like return value from a 
    function example getMethods(). not know at compile time.
4. What is stateless and statefull widgets?
5. Example for stateless and statefull widgets
    Stateless:
        - Don't manage any internal data
        - Only update the screen if parent widgets were updated ('re-rendered)
        -It should be your default : Use as often as possible
        - stateless widgets will have a single class which directly contains a build method
    Stateful : 
        - Do manage internal data
        - When state changes, the widget is re-rendered and UI is updated
        - use whenever you have changing data that should cause UI updates. setState((){})
        -stateful widgets actually create two classes widget class and state class (has build method) 
6. What is constructor, this and super?
    Constructor functions are executed when classes are instantiated. 
7. inbuilt and custom widgets
8. const keyword optimize performace. values or widgets are cached and reusable
9. Variables - data containers

main.dart - first file to be executed when flutter Dart app starts on a device

main() is the entry point for the app

main() function gets executed automatically by Dart , when executing the compiled app on the target device.
runApp() should be called inside of main(). runApp() tells flutter what to display on the screen ie. which
UI to be display on the screen.Pass the to-be-displayed "widget tree" to runApp. A widget tree is a combination of (nested) Flutter widgets that build the overall user interface.

Dart parses code from top to bottom then compiles that code to native iOS or Android machine and it's that
machine code then shipped to those devices like installing it on devices through app store 

Flutter is all about widgets

Dart is an object oriented language. so in dart all values are objects. complex objects are built based on classes. Classes are blue prints for objects. Objects are data structures stored in computer memory ie.properties and functions

Dart is a type safe language. All values are of certain types like tring, int, MaterialApp

