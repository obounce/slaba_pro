# slaba_pro

A new flutter plugin project.

Made by Samuel Adekunle x O'Bounce Technologies,

Install and import the package. Then just customize its parameters.

```yaml
dependencies:
  flutter:
    sdk: flutter
  slaba_pro: ^1.0.1
```

Make use of the package like this:

```dart
  OneAppPlugin().getPaymentUI(
    context,
    amount: 1000.00,
    email: 'example@mail.net',
    currency: 'NGN',
    firstName: 'Samuel',
    lastName: 'Adekunle',
    phoneNumber: '09011111111',
    secretKey: 'secret-key-0000000XXXXXXX',
  );
```

No other configuration required—the plugin works out of the box.

## :arrow_forward: Running Example project

For help getting started with Flutter, view the online [documentation](https://flutter.io/).

An [example project](https://github.com/obounce/slaba_pro/tree/main/example) has been provided in this plugin.
Clone this repo and navigate to the **example** folder. Open it with a supported IDE or execute `flutter run` from that folder in terminal.

## :pencil: Contributing, :disappointed: Issues and :bug: Bug Reports

The project is open to public contribution. Please feel very free to contribute.
Experienced an issue or want to report a bug? Please, [report it here](https://github.com/obounce/slaba_pro/issues). Remember to be as descriptive as possible.
"# slaba_pro" 
