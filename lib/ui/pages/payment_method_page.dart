part of 'pages.dart';

class PaymentMethodePage extends StatelessWidget {
  final String paymentUrl;

  const PaymentMethodePage(this.paymentUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "Finish Your Payment",
        subtitle: 'Please select your favorite\npayment method',
        picturePath: 'assets/Payment.png',
        buttonTap1: () async {
          await launch(paymentUrl);
        },
        buttonTitle1: 'Payment Method',
        buttonTap2: () {
          Get.offAll(
            () => MainPage(
              initialPage: 1,
            ),
          );
        },
        buttonTitle2: 'View My Order',
      ),
    );
  }
}
