import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../main.dart';
import '../../../util/constant.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Riverpod Implementation'),
      ),
      body: Container(
        padding: EdgeInsets.all(defaultPadding),
        child: ListView(
          children: [
            Text(
              'This is an example of using Consumer and ref.read and ref.watch. The purpose of Consumer is you can update any widget you like without changing your widget to stateful widget.\n\nWhen you update something to your screen, only widget that wrapped with Consumer that changed. Other widget doesn\'t change.\n\nThis implementation makes the app more light and clean.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Consumer(builder: (_, controller, __) {
              return Text(
                '${controller.watch(homeController).number}',
                textAlign: TextAlign.center,
              );
            }),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                  ),
                  onPressed: () {
                    ref.read(homeController).decreaseNumber();
                  },
                  icon: Icon(Icons.remove),
                  label: Text('Decrease'),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                  ),
                  onPressed: () {
                    ref.read(homeController).resetNumber();
                  },
                  icon: Icon(Icons.refresh),
                  label: Text('Reset'),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                  ),
                  onPressed: () {
                    ref.read(homeController).addNumber();
                  },
                  icon: Icon(Icons.add),
                  label: Text('Add'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
