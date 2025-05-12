import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_13/models/main_provider.dart';

class ProviderScreen extends StatefulWidget {
  const ProviderScreen({super.key});

  @override
  State<ProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<ProviderScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainProvider(),
      child: Consumer<MainProvider>(
        builder: (context, mainProvider, child) {
          return _getWidgets(context, mainProvider);
        },
      ),
    );
  }

  Scaffold _getWidgets(BuildContext context, MainProvider provider) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('tab button for counting'),
              Text('${provider.counter}'),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.counter = ++provider.counter;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
