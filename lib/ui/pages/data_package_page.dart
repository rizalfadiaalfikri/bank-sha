import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/package_item.dart';
import 'package:bank_sha/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paket Data'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomForm(
            title: '+62',
            isShowTitle: false,
          ),
          const SizedBox(
            height: 49,
          ),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(spacing: 15, runSpacing: 15, children: [
            PackageItem(
              amount: 10,
              price: 1000000,
            ),
            PackageItem(
              amount: 20,
              price: 2000000,
            ),
            PackageItem(
              amount: 30,
              price: 3000000,
              isSelected: true,
            ),
            PackageItem(
              amount: 40,
              price: 4000000,
            ),
          ]),
          const SizedBox(
            height: 85,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () async {
              // Navigator.pushNamed(context, '/data-package');
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/data-success', (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 57,
          ),
        ],
      ),
    );
  }
}
