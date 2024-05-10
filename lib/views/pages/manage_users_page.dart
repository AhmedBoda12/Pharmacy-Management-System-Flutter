import 'package:faith_pharm/views/widgets/custom_search_bar.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/floating_action.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/user_card.dart';
import 'package:flutter/material.dart';

class manageUsers extends StatelessWidget {
  const manageUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        actions: const [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
                width: 300,
                child: CustomSearchBar(hint: "Which user do you search?")),
          ),
        ],
      ),
      floatingActionButton: float_action(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            user_card(user_authorization: true, user_name: "Mahmoud Elhoseny",),
            user_card(user_authorization: true, user_name: "Mahmoud Elhoseny",),
            user_card(user_authorization: true, user_name: "Mahmoud Elhoseny",),
            user_card(user_authorization: true, user_name: "Mahmoud Elhoseny",),
            user_card(user_authorization: true, user_name: "Mahmoud Elhoseny",),
            user_card(user_authorization: true, user_name: "Mahmoud Elhoseny",),
            user_card(user_authorization: true, user_name: "Mahmoud Elhoseny",),

          ]
        )
      )
    );
  }
}