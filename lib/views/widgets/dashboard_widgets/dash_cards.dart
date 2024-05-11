import 'package:flutter/material.dart';

class DashCard extends StatelessWidget {
  const DashCard({
    super.key,
    required this.titleData,
    required this.imageData,
    required this.actionData,
  });

  final List titleData;
  final List imageData;
  final List actionData;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .8,
        mainAxisSpacing: 20,
      ),
      shrinkWrap: true,
      itemCount: titleData.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return actionData[index];
            }));
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26, spreadRadius: 1, blurRadius: 6)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  imageData[index],
                  fit: BoxFit.cover,
                ),
                Text(
                  titleData[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
