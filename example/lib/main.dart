import 'package:flutter/material.dart';
import 'package:slaba_pro/slaba_pro.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // buildBMI(context, 34.0),
            TextButton(
              onPressed: () {
                OneAppPlugin().getPaymentUI(
                  context,
                  amount: 3400,
                  email: 'samuel@obounce.net',
                  currency: 'NGN',
                  firstName: 'Opeyemi',
                  lastName: 'Paul',
                  phoneNumber: '08033456789',
                  secretKey: '',
                );
              },
              child: const Text('Place Order Now!'),
            ),
          ],
        ),
      ),
    );
  }
}
