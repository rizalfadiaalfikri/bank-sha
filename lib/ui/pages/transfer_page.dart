import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/transfer_recent_user_item.dart';
import 'package:bank_sha/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomForm(
            title: 'by username',
            isShowTitle: false,
          ),
          // buildRecentUsers(),
          buildResultUser(),
          const SizedBox(
            height: 274,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          TransferRecentUserItem(
            imageUrl: "assets/img_friend1.png",
            name: 'Yonna Jie',
            username: 'yoenna',
            isVerified: true,
          ),
          TransferRecentUserItem(
            imageUrl: "assets/img_friend2.png",
            name: 'Jhon Hi',
            username: 'jhi',
            isVerified: false,
          ),
          TransferRecentUserItem(
            imageUrl: "assets/img_friend3.png",
            name: 'Masayoshi',
            username: 'form',
            isVerified: true,
          )
        ],
      ),
    );
  }

  Widget buildResultUser() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(spacing: 15, runSpacing: 15, children: [
            TransferResultUserItem(
              imageUrl: "assets/img_friend1.png",
              name: 'Yonna Jie',
              username: 'yoenna',
              isVerified: true,
              isSelected: true,
            ),
            TransferResultUserItem(
              imageUrl: "assets/img_friend1.png",
              name: 'Yonna Jie',
              username: 'yoenna',
              isVerified: true,
              isSelected: true,
            ),
          ]),
        ],
      ),
    );
  }
}
