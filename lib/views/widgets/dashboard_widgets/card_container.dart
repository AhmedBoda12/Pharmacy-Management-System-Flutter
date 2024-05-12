import 'package:faith_pharm/views/widgets/dashboard_widgets/filter_icon.dart';
import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, left: 15),
                child: FilterIcon(),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            // child: TopTextDashboard(lastUpdate: "7 Aug 2032"),
          )
        ],
      ),
    );
  }
}
