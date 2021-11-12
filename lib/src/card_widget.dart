part of slaba;

/// This is the first one app flutter package - check it out[sammuel]
class OneAppPlugin {
  /// Get the payment method UI
  /// Required params: [firstname, lastname, email, phone, amount, currency, description, returnUrl, cancelUrl, paymentMethod, secretKey]
  /// ```dart
  /// OneAppPlugin().getPaymentUI(
  ///   context,
  ///   amount: 3400,
  ///   email: 'samuel@obounce.net',
  ///   currency: 'NGN',
  ///   firstName: 'Opeyemi',
  ///   lastName: 'Paul',
  ///   phoneNumber: '08033456789',
  ///   secretKey: '',
  /// );
  /// ```
  void getPaymentUI(
    BuildContext context, {
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String email,
    required double amount,
    required String currency,
    required String secretKey,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        Color main = const Color(0xFFE70A80);
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: main,
                      child: Text(
                        firstName[0] + lastName[0],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          email,
                          style: const TextStyle(fontSize: 12),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Pay ',
                            children: [
                              TextSpan(
                                text: 'NGN $amount',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Enter your card details to procced',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Card Number'.toUpperCase(),
                    labelStyle: const TextStyle(color: Colors.grey),
                    hintText: '0000 1111 2222 3333',
                    suffixIcon:
                        const Icon(Icons.credit_card, color: Colors.grey),
                    counterText: '',
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: main),
                    ),
                    isDense: true,
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 16,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(
                      flex: 4,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Card expiry'.toUpperCase(),
                          labelStyle: const TextStyle(color: Colors.grey),
                          hintText: '00/11',
                          counterText: '',
                          border: const OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: main),
                          ),
                          isDense: true,
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: 4,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Flexible(
                      flex: 3,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'CVV'.toUpperCase(),
                          labelStyle: const TextStyle(color: Colors.grey),
                          hintText: '012',
                          counterText: '',
                          border: const OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: main),
                          ),
                          isDense: true,
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {},
                  elevation: 0,
                  height: 52,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  color: main,
                  child: Text(
                    'Pay NGN $amount',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.power_outlined, size: 12),
                    Text(
                      'Powered by',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Image.network('https://i.ibb.co/JQrNxn0/logo.png',
                    width: 468, height: 26),
                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }
}
