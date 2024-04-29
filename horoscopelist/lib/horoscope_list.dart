import 'package:flutter/material.dart';
import 'package:horoscopelist/burc_item.dart';
import 'package:horoscopelist/data/strings.dart';
import 'package:horoscopelist/model/burc.dart';


class HoroscopeList extends StatelessWidget {
  late final List<Burc> tumBurclar;
  HoroscopeList() {
    tumBurclar = veriKaynaginiHazirla();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Burçlar Listesi'),backgroundColor: Colors.amber,),
      body: Center(
      child: ListView.builder(itemBuilder: (context,index) {
        return BurcItem(listelenenBurc: tumBurclar[index]);
      } ,itemCount: tumBurclar.length,),
    ),
    );
  }
  
  List<Burc> veriKaynaginiHazirla() {
      List<Burc> geciciList = [];
      for (int i = 0 ; i < 12; i++) {
        var burcAdi = Strings.BURC_ADLARI[i];
        var burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];
        var burcTarihi = Strings.BURC_TARIHLERI[i];
        var burcKucukResim = burcAdi.toLowerCase() + '${i+1}.png';
        var burcBuyukResim = burcAdi.toLowerCase() + '_buyuk' + '${i+1}.png';


        Burc eklenecekBurc = Burc(burcAdi, burcDetayi, burcTarihi, burcBuyukResim, burcKucukResim  );
        geciciList.add(eklenecekBurc);

      }
      return geciciList;
  }
}