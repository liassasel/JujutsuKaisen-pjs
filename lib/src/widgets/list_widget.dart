import 'package:app_01/src/pages/details_pages.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ListPj extends StatefulWidget {
  const ListPj({super.key});

  @override
  State<ListPj> createState() => _ListPjState();
}

class _ListPjState extends State<ListPj> {

  double screenWidth = 0;

  final titleStyleText = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white
  );

  @override
  Widget build(BuildContext context) {

    screenWidth = MediaQuery.of(context).size.width - 50;


Widget characterBlocks(String name, int color, String image, String image2) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute
        (builder: (context) => DetailPage(color: color, image: image2, name: name,)));
      },

      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(169, 25, 27, 36),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/$image',
                ),
              ),
            ),
      
      
      
            RichText(text: TextSpan(
              text: name, style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              )
            )),
      
            Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(.1),
                  ),
                  child: IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.more_vert, size: 30, color: Colors.white),
                  ),
                ),
      
          ]
      ),
        ),
    );
}

  Column blockCovers(String image, String title, String subtitle){
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(

            'assets/$image',
            width: screenWidth * 0.31,
            height: 180,
            fit: BoxFit.cover,
            
            ),

            ),

            const SizedBox(
              height: 15,

        ),

  RichText(text:  TextSpan(
    text: title, style: const TextStyle(
      color: Colors.white70,
      fontSize: 14
    )
  )
  ),

  RichText(text:  TextSpan(
    text: subtitle, style: const TextStyle(
      color: Colors.white70,
      fontSize: 16
    )
  ))


      ]
    );

  }
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Center(
            child: Text(
              'Covers',
              style: titleStyleText,
            ),
          ),

          const SizedBox(height: 20),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              children: [
                blockCovers('jjk0.png', 'Jujutsu Kaisen 0', '(2021)'),
            
                SizedBox(
                  width: screenWidth * 0.03,
                ),
            
                blockCovers('jjk_S1.jpg', 'Jujutusu Kaisen S1', '(2020-2021)'),
            
                SizedBox(
                  width: screenWidth * 0.03,
                ),
            
                blockCovers('jjk_S2.png', 'Jujutsu Kaisen S2', '(2023)'),
              ],
            ),
          ),

          const Divider(
            height: 60,
            color: Colors.white,
            thickness: .5,
          ),

          Center(
            child: Text(
              'Characters',
              style: titleStyleText,
            ),
          ),

        const SizedBox(
          height: 20,
        ),


        characterBlocks(
          'Gojo Satoru', 0xff10002B, 'jjk_gojo.png', 'Satorubg.png'
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Masamichi Yaga', 0xff453e45, 'Masamichi Yaga.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Megumi Fushiguro', 0xff003348, 'Megumi Fushiguro.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Nobara Kugisaki', 0xffb94e48, 'Nobara Kugisaki.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Yuji Itadori', 0xff8a3643, 'Yuji Itadori.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Yuta Okkotsu', 0xff012a30, 'Yuta Okkotsu.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Toge Inumaki', 0xff453e45, 'Toge Inumaki.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Panda', 0xff453e45, 'Panda.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Maki Zenin', 0xff453e45, 'Maki Zenin.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Kinji Hakari', 0xff453e45, 'Kinji Hakari.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Kiyotaka Ijichi', 0xff453e45, 'Kiyotaka Ijichi.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Akari Nitta', 0xff453e45, 'Akari Nitta.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Shoko Ieiri', 0xff453e45, 'Shoko Ieiri.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Yoshinobu Gakuganji', 0xff453e45, 'Yoshinoubu Gakuganji.png', ''
        ),

        // const SizedBox(
        //         height: 15,
        //       ),

        // characterBlocks(
        //   'Kasumi Miwa', 0xff21E295, 'Kasumi Miwa.png',
        // ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Mai Zenin', 0xff453e45, 'Mai Zenin.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Aoi Todo', 0xff453e45, 'Aoi Todo.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Noritoshi Kamo', 0xff453e45, 'Noritoshi Kamo.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Utahime Iori', 0xff453e45, 'Utahime Iori.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Momo Nishimiya', 0xff453e45, 'Momo Nishimiya.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Kento Nanami', 0xff453e45, 'Kento Nanami.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Takuma Ino', 0xff453e45, 'Takuma Ino.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Mei Mei', 0xff453e45, 'Mei Mei.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Yuki Tsukumo', 0xff453e45, 'Yuki Tsukumo.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Naobito Zenin', 0xff453e45, 'Naobito Zenin.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Noritoshi Kamo', 0xff453e45, 'Noritoshi Kamov2.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Suguru Geto', 0xff222d55, 'Suguru Geto.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Junpei Yoshino', 0xff453e45, 'Junpei Yoshino.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Juzo Kamiya', 0xff453e45, 'Juzo Kamiya.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Haruta Shigemo', 0xff453e45, 'Haruta Shigemo.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Uraume', 0xff453e45, 'Uraume.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Sukuna', 0xff330000, 'Sukuna.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Mahito', 0xff453e45, 'Mahito.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Jogo', 0xff453e45, 'Jogo.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Hanami', 0xff453e45, 'Hanami.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Dagon', 0xff453e45, 'Dagon.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Choso', 0xff453e45, 'Choso.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Esou', 0xff453e45, 'Esou.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Kechizu', 0xff453e45, 'Kechizu.png', ''
        ),

        // const SizedBox(
        //         height: 15,
        //       ),

        // characterBlocks(
        //   'Setsuko Sasaki', 0xff21E295, 'Setsuko Sasaki.png',
        // ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Takeshi Iguchi', 0xff453e45, 'Takeshi Iguchi.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Takagi', 0xff453e45, 'Takagi.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Shota Ito', 0xff453e45, 'Shota Ito.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Sotomura', 0xff453e45, 'Sotomura.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Fujimura', 0xff453e45, 'Fujimura.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Takeda', 0xff453e45, 'Takeda.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Wasuke Itadori', 0xff453e45, 'Wasuke Itadori.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Tsumiki Fushiguro', 0xff453e45, 'Tsumaki Fushiguro.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Saori', 0xff453e45, 'Saori.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Nagi Yoshino', 0xff453e45, 'Nagi Yoshino.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Tadashi Mom', 0xff453e45, 'Tadashi Mom.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Tadashi Okazaki', 0xff453e45, 'Tadashi Okazaki.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Takada-Chan', 0xff453e45, 'Takada-Chan.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        characterBlocks(
          'Taichi Kanada', 0xff453e45, 'Taichi Kanada.png', ''
        ),

        const SizedBox(
                height: 15,
              ),

        ],

        
      ),
    );

}

}