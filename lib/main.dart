import 'package:flutter/material.dart';
import 'app/constants/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Scaffold(
      body: SizedBox(
        width: deviceInfo.size.width,
        height: deviceInfo.size.height,
        child: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.background,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: deviceInfo.size.width * 0.75,
                child: Text(
                  "Get your Money Under Control",
                  style: theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: deviceInfo.size.width * 0.75,
                child: Text(
                  "Manage your Expenses. Seamlessly.",
                  style: theme.textTheme.displayMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 94, 92, 229),
                  fixedSize: Size(
                    deviceInfo.size.width * 0.9,
                    deviceInfo.size.height * 0.07,
                  ),
                ),
                onPressed: () {},
                child: const Text('Sign Up with Email ID'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.grey,
                  backgroundColor: Colors.white,
                  fixedSize: Size(
                    deviceInfo.size.width * 0.9,
                    deviceInfo.size.height * 0.07,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Sign Up with Google',
                ),
              ),
              SizedBox(
                width: deviceInfo.size.width * 0.75,
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: theme.textTheme.bodyMedium,
                      children: const [
                        TextSpan(
                          text: 'Alread have an account? ',
                        ),
                        TextSpan(
                          text: 'Sign in',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
