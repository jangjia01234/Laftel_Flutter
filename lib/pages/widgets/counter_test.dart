import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/counter_control.dart';
import '../../providers/counter_model.dart';

class CounterTest extends StatelessWidget {
  const CounterTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterModel>(builder: (context, counter, child) {
              return Text(
                "${counter.count}",
                style: const TextStyle(fontSize: 40),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CounterControl()));
                },
                child: const Text("카운터 상세"))
          ],
        ),
      ),
    );
  }
}
