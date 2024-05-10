import 'package:faith_pharm/views/widgets/dashboard_widgets/filter_icon.dart';
import 'package:faith_pharm/views/widgets/dashboard_widgets/top_text.dart';
import 'package:flutter/material.dart';

class card_container extends StatelessWidget {
  const card_container({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      height: height * .25,
      width: width,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, left: 15),
                child: filter_icon(),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: top_text_dashboard(lastUpdate: "7 Aug 2032"),
          )
        ],
      ),
    );
  }
}
