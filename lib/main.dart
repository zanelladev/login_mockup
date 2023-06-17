import 'package:flutter/material.dart';
import 'app/constants/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
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
      body: Container(
        width: deviceInfo.size.width,
        height: deviceInfo.size.height,
        decoration: BoxDecoration(
          color: theme.colorScheme.background,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: deviceInfo.size.height * 0.15),
            SizedBox(
              width: deviceInfo.size.width * 0.50,
              child: Image.asset(
                'assets/images/main_icon.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: deviceInfo.size.width * 0.75,
              child: Text(
                "Get your Money Under Control",
                style: theme.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: deviceInfo.size.height * 0.02),
            SizedBox(
              width: deviceInfo.size.width * 0.75,
              child: Text(
                "Manage your Expenses. Seamlessly.",
                style: theme.textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: deviceInfo.size.height * 0.10),
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
              child: Text(
                'Sign Up with Email ID',
                style: theme.textTheme.bodyMedium,
              ),
            ),
            SizedBox(height: deviceInfo.size.height * 0.01),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/google_icon.png',
                    width: deviceInfo.size.width * 0.09,
                  ),
                  const Text(
                    'Sign Up with Google',
                    style: TextStyle(
                      color: Color.fromARGB(255, 130, 130, 134),
                      fontFamily: "Roboto",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: deviceInfo.size.height * 0.07),
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
    );
  }
}
