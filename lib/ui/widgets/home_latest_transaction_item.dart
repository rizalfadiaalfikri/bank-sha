import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeLatestTransactionItem extends StatelessWidget {
  final String itemUrl;
  final String title;
  final String time;
  final String value;
  const HomeLatestTransactionItem(
      {Key? key,
      required this.itemUrl,
      required this.title,
      required this.time,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      child: Row(
        children: [
          Image.asset(
            itemUrl,
            width: 48,
          ),
          const SizedBox(
            height: 16,
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  time,
                  style:
                      greyTextStyle.copyWith(fontSize: 12, fontWeight: medium),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              value,
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
          ),
        ],
      ),
    );
  }
}
