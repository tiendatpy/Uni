import 'package:flutter/material.dart';
import 'package:myapp/trenlop/state_example/counter_exam/couter_state.dart';
import 'package:provider/provider.dart';

class CounterStateProvider extends StatelessWidget {
  const CounterStateProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterState(),
      // child: PageCounter63(),
      child: const PageCounter2(),
    );
  }
}

class PageCounter63 extends StatelessWidget {
  PageCounter63({super.key});
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VD Provider'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // đối tượng đc trả về bởi read chỉ được sử dụng trong cá event
                var c = context.read<CounterState>();
                c.tang();
              },
              child: const Text("+", style: TextStyle(fontSize: 20)),
            ),
            Consumer<CounterState>(
              builder: (context, value, child) {
                return Column(
                  children: [
                    Text("${value.count}",
                        style: const TextStyle(fontSize: 20)),
                    child ?? const Text('Chưa có wiget ')
                  ],
                );
              },
              child: const Text('Not rebuild'),
            ),
            ElevatedButton(
                onPressed: () {
                  var c = context.read<CounterState>();
                  value--;
                  c.giam();
                },
                child: const Text("-", style: TextStyle(fontSize: 20))),
          ],
        ),
      ),
    );
  }
}

class PageCounter2 extends StatelessWidget {
  const PageCounter2({super.key});

  @override
  Widget build(BuildContext context) {
    var a = context.watch<CounterState>();
    // var c = Provider.of<CounterState>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('VD2 Provider'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                var c = context.read<CounterState>();
                c.tang();
              },
              child: const Text('+'),
            ),
            Text('${a.count}'),
          ],
        ),
      ),
    );
  }
}
