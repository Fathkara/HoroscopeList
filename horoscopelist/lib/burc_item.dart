import 'package:flutter/material.dart';
import 'package:horoscopelist/burc_detay.dart';
import 'package:horoscopelist/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => BurcDetay(secilenBurc: listelenenBurc),));
          },
          leading: Image.asset("images/" + listelenenBurc.burcKucukResim,width: 64,height: 64,),
          title: Text(listelenenBurc.burcAdi),
          subtitle: Text(listelenenBurc.burcTarihi),
          trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink,),
        ),
      ),
    );
  }
}