import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/service_locator.dart';
import '../view_models/spacer_viewmodel.dart';

class SpacerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<SpacerViewModel>(),
      child: Consumer<SpacerViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Spacer with MVVM"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      color: Colors.red,
                      width: 50,
                      height: 50,
                    ),
                    Spacer(flex: viewModel.flex),
                    Container(
                      color: Colors.blue,
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => viewModel.updateFlex(1),
                      child: Text("Flex 1"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => viewModel.updateFlex(3),
                      child: Text("Flex 3"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => viewModel.updateFlex(5),
                      child: Text("Flex 5"),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
