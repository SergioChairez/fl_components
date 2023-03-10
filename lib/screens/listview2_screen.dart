import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const ['Megaman', 'MetalGear', 'Apex Legends', 'Doom'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 2"),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text( options[index] ),
            trailing: const Icon( Icons.arrow_forward ),
            onTap: () {

            },
          ),
          separatorBuilder: ( _, __ ) => const Divider(),
          itemCount: options.length
      )
      );
  }
}
