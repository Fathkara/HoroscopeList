import 'package:flutter/material.dart';
import 'package:horoscopelist/model/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverAppBar(
          expandedHeight: 150,
          pinned: true,
          title: Text(secilenBurc.burcAdi + " Burcu Özellikleri"),
          backgroundColor: Colors.pink,
          flexibleSpace: FlexibleSpaceBar(background: Image.asset('images/' + secilenBurc.burcBuyukResim),centerTitle: true,),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(child: Text(secilenBurc.burcDetayi),),
        )
        ],
      ),
    );
  }
}