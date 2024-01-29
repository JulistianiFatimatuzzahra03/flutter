import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromARGB(255, 233, 46, 46), Color.fromARGB(255, 250, 252, 255)]),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              children: [
               Image.network("https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/12/15/2299917056.jpg"),
               Image.network("https://akcdn.detik.net.id/community/media/visual/2021/04/30/film-adit-sopo-jarwo-2_169.jpeg?w=620"),
                Image.network("https://assets-a1.kompasiana.com/items/album/2021/05/01/adit-sopo-jarwo-2-608d24ecd541df1c2d599232.jpg")
              ],
            ),
          ),
           Container(
            height: 100,
            width: 300,
             child: ListView(
              children: [
                Container(
                   child: Container(
                    height: 500,
                    width: 200,
                    child: Text(
                      "Adit & Sopo Jarwo dari tahun 2014 hingga 2015 adalah sebuah serial animasi Indonesia untuk"
                      " anak-anak yang ditayangkan perdana pada 27 Januari 2014 di MNCTV. "
                     "Kisah persahabatan antara Adit, Dennis, Mitha, dan Devi, bersama dengan Adelya yang kehidupannya penuh petualangan tak terduga. Adit memegang peran penting sebagai penggerak, motivator, dan inspirator bagi teman-temannya dalam menggapai impian mereka di masa depan."
                     "Namun, perjalanan mereka tidak selalu mulus. Mereka harus berhadapan dengan dua individu, Sopo & Jarwo, yang sering mencari kesempatan untuk mencapai keuntungan tanpa usaha keras. Perbedaan pandangan dan pemahaman menjadi penyebab perselisihan yang berlangsung lama antara Adit dan kawan-kawannya dengan Sopo & Jarwo." ,
                    style: TextStyle(),
                    textAlign: TextAlign.justify,
                    
                    ),
                  ),
                )
              ],
            ),
          ),
          
          Container(
            margin: EdgeInsets.all(8),
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network("https://cdn.antaranews.com/cache/1200x800/2014/09/20140920Adit-dan-Sopo-Jarwo.jpg"),
                Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/ASJ_karakter.jpg/500px-ASJ_karakter.jpg"),
                Image.network("https://cdn.antaranews.com/cache/1200x800/2021/04/30/Screenshot_2021-04-30-17-35-38-97_copy_1024x682.jpg"),
              ],
            ),
          ),
          Text(
            "Galeri",
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 400,
            height: 400,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  margin: EdgeInsets.all(8),
                  child:Image.network("https://cdn1-production-images-kly.akamaized.net/qte3n8C6wREa10iLULkRNr4lhVs=/800x1066/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/997907/original/025382400_1442971001-adit-dan-sopo-jarwo.jpg")
                );
              },
            ),
          )
          
         
              ],
      )
            );
        
  }
}