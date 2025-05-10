import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';

class CounterControl extends StatelessWidget {
  const CounterControl({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<CounterModel>(builder: (context, counter, child) {
            return Text(
              "${counter.count}",
              style: const TextStyle(fontSize: 40),
            );
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: context.read<CounterModel>().increase,
                  child: const Icon(Icons.add)),
              ElevatedButton(
                  onPressed: context.read<CounterModel>().decrease,
                  child: const Icon(Icons.remove)),
            ],
          )
        ],
      ),
    );
  }
}