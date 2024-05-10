import 'package:flutter/material.dart';

class CounterContainer extends StatefulWidget {
  const CounterContainer({
    super.key,
  });

  @override
  State<CounterContainer> createState() => _CounterContainerState();
}

class _CounterContainerState extends State<CounterContainer> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if (index > 1) {
                  index--;
                }
              });
            },
            icon: Icon(
              Icons.remove,
              color: index > 1 ? Theme.of(context).colorScheme.primary : null,
            ),
          ),
          Text(
            '$index',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                index++;
              });
            },
            icon: Icon(
              Icons.add,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
