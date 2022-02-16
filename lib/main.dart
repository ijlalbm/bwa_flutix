import 'package:bwa_flutix/firebase_options.dart';
import 'package:bwa_flutix/services/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () async {
                  SignInSignUpResult result = await AuthServices.signUp(
                    "ijlal@gmail.com",
                    '123456',
                    'Ijlal',
                    ['actions', 'horror', 'music', 'drama'],
                    'korean',
                  );

                  if (result.user == null) {
                    print(result.message);
                  } else {
                    result.user.toString();
                  }
                },
                child: Text("Sign Up"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
