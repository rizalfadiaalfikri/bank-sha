import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignUpSetProfilePage extends StatelessWidget {
  const SignUpSetProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(top: 70, bottom: 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img_logo_light.png"),
              ),
            ),
          ),
          Text(
            'Just Us to Unlock \nYour Growth',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: lightBackgroundColor,
                //   ),
                //   child: Center(
                //     child: Image.asset(
                //       "assets/ic_upload.png",
                //       width: 32,
                //     ),
                //   ),
                // ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/img_profile.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Shayna Hanna',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomForm(
                  title: 'Set PIN (6 digit number)',
                  obsecureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup-set-ktp');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: purlpeColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(56),
                      ),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
