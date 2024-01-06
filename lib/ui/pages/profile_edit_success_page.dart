import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ProfileEditSuccessPage extends StatelessWidget {
  const ProfileEditSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'Your data is safe with\nour system',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            ),
            SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              title: 'My Profile',
              width: 183,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
