import 'package:flutter/material.dart';

class dash_card extends StatelessWidget {
  const dash_card({
    super.key,
    required this.title_data,
    required this.image_data,
    required this.action_data,
  });

  final List title_data;
  final List image_data;
  final List action_data;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .8,
        mainAxisSpacing: 20,
      ),
      shrinkWrap: true,
      itemCount: title_data.length,
      physics:const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return action_data[index];
            }));
          },
          child: Container(
            alignment: Alignment.center,
            margin:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 6)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image_data[index],
                  width: 140,
                  fit: BoxFit.cover,
                ),
                Text(
                  title_data[index],
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
