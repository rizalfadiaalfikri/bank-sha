import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/transfer_recent_user_item.dart';
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
          buildRecentUsers(),
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
}
