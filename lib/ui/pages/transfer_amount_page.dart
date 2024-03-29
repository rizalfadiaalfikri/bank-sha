import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class TransferAmountPage extends StatefulWidget {
  @override
  State<TransferAmountPage> createState() => _TransferAmountPage();
}

class _TransferAmountPage extends State<TransferAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();
    amountController.addListener(() {
      final text =
          amountController.text.replaceAll('.', ''); // Hapus tanda titik

      try {
        final parsedValue = int.parse(text);
        amountController.value = amountController.value.copyWith(
          text:
              NumberFormat.currency(locale: 'id', decimalDigits: 0, symbol: '')
                  .format(parsedValue),
        );
      } catch (e) {
        print('Error parsing integer: $e');
        // Tangani kesalahan, misalnya, berikan nilai default atau tampilkan pesan kesalahan
      }
    });
  }

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
        ),
        children: [
          Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Center(
                child: Text(
                  'Total Amount',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              const SizedBox(
                height: 67,
              ),
              Align(
                child: SizedBox(
                  width: 200,
                  child: TextFormField(
                    enabled: false,
                    controller: amountController,
                    cursorColor: greyColor,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: medium,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Text(
                        'Rp',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: medium,
                        ),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: greyColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: greyColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomInputButton(
                    title: '1',
                    onTap: () {
                      addAmount('1');
                    },
                  ),
                  CustomInputButton(
                    title: '2',
                    onTap: () {
                      addAmount('2');
                    },
                  ),
                  CustomInputButton(
                    title: '3',
                    onTap: () {
                      addAmount('3');
                    },
                  ),
                  CustomInputButton(
                    title: '4',
                    onTap: () {
                      addAmount('4');
                    },
                  ),
                  CustomInputButton(
                    title: '5',
                    onTap: () {
                      addAmount('5');
                    },
                  ),
                  CustomInputButton(
                    title: '6',
                    onTap: () {
                      addAmount('6');
                    },
                  ),
                  CustomInputButton(
                    title: '7',
                    onTap: () {
                      addAmount('7');
                    },
                  ),
                  CustomInputButton(
                    title: '8',
                    onTap: () {
                      addAmount('8');
                    },
                  ),
                  CustomInputButton(
                    title: '9',
                    onTap: () {
                      addAmount('9');
                    },
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomInputButton(
                    title: '0',
                    onTap: () {
                      addAmount('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deleteAmount();
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: numberBackgroundColor,
                      ),
                      child: Center(
                          child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              CustomFilledButton(
                title: 'Continue',
                onPressed: () async {
                  if (await Navigator.pushNamed(context, '/pin') == true) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/transfer-success', (route) => false);
                  }
                },
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextButton(title: 'Terms & Conditions'),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CustomInputButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const CustomInputButton(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: numberBackgroundColor,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: semiBold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
