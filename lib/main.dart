import 'package:flutter/material.dart';

// The main function is the entry point of the Flutter app.
void main() {
  runApp(MyApp());
}

// MyApp is the root widget of the app.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Title of the application
      title: 'Hello world App',
      // Theme settings of the app
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // Home is the main screen of the app
      home: HomeScreen(),
    );
  }
}

// HomeScreen is a stateless widget since its content doesn't change.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with a title
      appBar: AppBar(
        title: Text('Hello!!'),
      ),
      // The body of the screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display a welcome message
            Text(
              'Welcome to my first app!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20), // Adds some space between widgets
            // A button that shows a message when pressed
            ElevatedButton(
              onPressed: () {
                // Show a message when the button is pressed
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Hello!'),
                      content: Text('You pressed the button.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            // Close the dialog
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Press me'),
            ),
          ],
        ),
      ),
    );
  }
}
