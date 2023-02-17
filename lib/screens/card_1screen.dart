import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children: const [

          CustomCardType1(),
          SizedBox( height: 10),
          CustomCardType2(name: 'Toussaint', imageUrl: 'https://img4.goodfon.com/original/1920x1080/b/7f/the-witcher-3-tussent-gory-reka-zamok-peizazh-art-vedmak.jpg?d=1',),
          SizedBox( height: 10),
          CustomCardType2(imageUrl: 'https://rare-gallery.com/uploads/posts/949812-The-Witcher-3-Wild-Hunt-The-Witcher-3-Wild-Hunt-Blood-and-Wine.png',),
          SizedBox( height: 10),
          CustomCardType2(imageUrl: 'https://external-preview.redd.it/UOJTI72Kk37D_Xg_F79V-5GkhyAECGY0xE0f85-Nyfs.jpg?auto=webp&v=enabled&s=d84cdfd30996d45633191cc64f8ff65585b21a1f',),
          SizedBox( height: 10),
          CustomCardType2(imageUrl: 'https://i.redd.it/vd120nep2vs61.png',),

        ],
      ),
    );
  }
}