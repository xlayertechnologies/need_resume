import 'package:flutter/material.dart';
import 'package:need_resume/need_resume.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'My Application',
            home: HomeScreen()
        );
    }
}

class HomeScreen extends StatefulWidget {
    @override
    HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with NeedResume {
    @override
    void onResume() {
        // Implement your code inside here

        print('HomeScreen is resumed!');
    }

    void goAnotherScreen() {
        // Replace Navigator.push() or Navigator.pushNamed() with push() or pushNamed()

        push(context, MaterialPageRoute(builder: (context) => AnotherScreen()));
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: RaisedButton(
                    child: Text('Go to Another Screen'),
                    onPressed: () {
                        goAnotherScreen();
                    },
                ),
            ),
        );
    }
}

class AnotherScreen extends StatefulWidget {
    @override
    AnotherScreenState createState() => AnotherScreenState();
}

class AnotherScreenState extends State<AnotherScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: RaisedButton(
                    child: Text('Go Back'),
                    onPressed: () {
                        goBack();
                    },
                ),
            ),
        );
    }

    void goBack() {
        Navigator.pop(context);
    }
}
