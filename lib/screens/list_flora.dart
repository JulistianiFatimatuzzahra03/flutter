import 'package:belajar_flutter/screens/detail_flora_screen.dart';
import 'package:flutter/material.dart';
import '../helper/size_helper.dart';

class ListFloraScreen extends StatelessWidget {
  final List<Map<String, dynamic>> floradata = [
    {
      "nama" : "Kepuh (Sterula foetida)",
      "asal" : "Pulau Jawa",
      "image" : "assets/img/kepuh.jpg",
      "desc" : " Kepuh atau kelumpang merupakan sejenis pohon kerabat jauh kapuk randu." 
      "Kepuh ini memiliki bentuk batang yang tinggi dengan batang besar menjulang," 
      "pohon ini kerap didapati di hutan-hutan pantai. Di Bali dan juga di Jawa, "
      "pohon yang lekas tumbuh ini banyak ditemukan di pemakaman",
    },
    {
      "nama" : "Sawo Kecik (Manilkara kauki)",
      "asal" : "Pulau Jawa",
      "image" : "assets/img/sawok.jpg",
      "desc" : "Sawo Kecik berakar tunggang yang berbentuk kerucut panjang, kemudian"
       "tumbuh lurus ke bawah, bercabang banyak dan cabang-cabangnya bercabang lagi,"
       "sehingga dapat memberi kekuatan yang lebih besar kepada batang dan menghasilkan daerah"
       "perakaran yang amat luas, sehingga dapat menyerap air dan zat-zat makanan yang lebih banyak." 
    },
    {
      "nama" : "Matoa (Pometia Pinnata)",
      "asal" : "Papua",
      "image" : "assets/img/matoa.jpg",
      "desc" : "Matoa tumbuh secara alami pada tanah datar bertekstur liat. Pohon "
      "matoa tergolong besar dengan tinggi rata-rata 18 meter dan berdiameter rata-rata"
      "maksimum 100 cm. Tanaman ini biasanya akan berbuah setelah pohon berusia 4-5 tahun."
       "Seperti kebanyakan buah tropis, masa panen matoa berada di bulan Oktober sampai Desember." 
    },
    {
      "nama" : "Sukun (Artocarpus Communis)",
      "asal" : "Pulau Maluku dan Papua",
      "image" : "assets/img/sukun.jpg",
      "desc" : "Pohon sukun (atau pohon timbul) umumnya adalah pohon tinggi, yang"
       "dapat tumbuh mencapai 30 m, meski umumnya di pedesaan hanya belasan meter" 
       "tingginya. Hasil perbanyakan dengan klon umumnya pendek dan bercabang rendah. Batang"
       "besar dan lurus, hingga 8 m, sering dengan akar papan (banir) yang rendah dan memanjang." 
    },
    {
      "nama" : "Kayu Cendana (Santalum Album)",
      "asal" : "Pulau Nusa Tenggara",
      "image" : "assets/img/kayu.jpeg",
      "desc" : "Kayu cendana dianggap sebagai obat alternatif untuk membawa orang lebih dekat kepada Tuhan."
       "Minyak dasar kayu cendana, yang sangat mahal dalam bentuknya yang murni, digunakan terutama"
        "untuk penyembuhan cara Ayurveda, dan untuk menghilangkan rasa cemas." 
    },
  ];

@override
Widget build(BuildContext context) {
  return SafeArea(
    child: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("../assets/img/belakang.png"),
          fit: BoxFit.cover),
      ),
      child: ListView.builder(
        itemCount: floradata.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailFloraScreen(
                    nama: floradata[index]["nama"],
                    asal: floradata[index]["asal"],
                    image: floradata[index]["image"],
                    desc: floradata[index]["desc"]
                  ),
                ),
              );
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              height: displayHeight(context) * 0.25,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("${floradata[index]["image"]}"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                "${floradata[index]["nama"]} - ${floradata[index]["asal"]}",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }
      ),
    ),
  );
}
}