import 'package:flutter/material.dart';
import 'package:moda_uygulamasi/detay.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

// ignore: camel_case_types
class _AnasayfaState extends State<Anasayfa> with SingleTickerProviderStateMixin {
  String yaziTipi = 'Montserrat';
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        child: TabBar(controller: _tabController, tabs: [
          Tab(
            icon: Icon(
              Icons.more,
              color: Colors.grey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.grey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.navigation,
              color: Colors.grey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
              size: 22,
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt))],
        title: Text(
          'Moda Uygulaması',
          style: TextStyle(fontFamily: yaziTipi, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            Container(
              color: Colors.transparent,
              height: 140,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listeElemani('assets/images/model1.jpeg', 'assets/images/chanellogo.jpg'),
                    const SizedBox(width: 30),
                    listeElemani('assets/images/model2.jpeg', 'assets/images/chanellogo.jpg'),
                    const SizedBox(width: 30),
                    listeElemani('assets/images/model3.jpeg', 'assets/images/chanellogo.jpg'),
                    const SizedBox(width: 30),
                    listeElemani('assets/images/model3.jpeg', 'assets/images/chanellogo.jpg'),
                    const SizedBox(width: 30),
                    listeElemani('assets/images/model3.jpeg', 'assets/images/chanellogo.jpg'),
                    const SizedBox(width: 30),
                    listeElemani('assets/images/model3.jpeg', 'assets/images/chanellogo.jpg'),
                    const SizedBox(width: 30),
                  ],
                ),
              ),
            ),
            //Card
            Padding(
              padding: const EdgeInsets.all(16),
              child: Material(
                borderRadius: BorderRadius.circular(16),
                elevation: 4,
                color: Colors.white,
                child: Container(
                  height: 500,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(image: AssetImage('assets/images/model1.jpeg'), fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Daisy',
                                  style: TextStyle(fontFamily: yaziTipi, fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '34 mins ago',
                                  style: TextStyle(fontFamily: yaziTipi, fontSize: 12, color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 22,
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Lorem Ipsum, 500 yıl boyunca varlığını sürdürmekle kalmamış ve günümüzde elektronik yazı tipinin .",
                        style: TextStyle(fontFamily: yaziTipi, fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Detay(imagePath: 'assets/images/modelgrid1.jpeg'),
                                ),
                              );
                            },
                            child: Hero(
                              tag: 'assets/images/modelgrid1.jpeg',
                              child: Container(
                                height: 200,
                                width: (MediaQuery.of(context).size.width - 50) / 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(image: AssetImage('assets/images/modelgrid1.jpeg'), fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Detay(imagePath: 'assets/images/modelgrid2.jpeg'),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width - 100) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/images/modelgrid2.jpeg'), fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Detay(imagePath: 'assets/images/modelgrid3.jpeg'),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width - 100) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/images/modelgrid3.jpeg'), fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Text(
                                '# Lois vuitton',
                                style: TextStyle(fontFamily: yaziTipi, fontSize: 10, color: Colors.brown),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 25,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Text(
                                '# Chole vuitton',
                                style: TextStyle(fontFamily: yaziTipi, fontSize: 10, color: Colors.brown),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Divider(),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(
                            Icons.reply,
                            color: Colors.grey.withOpacity(0.4),
                            size: 30,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '1.7k',
                            style: TextStyle(fontFamily: yaziTipi, fontSize: 16),
                          ),
                          const SizedBox(width: 25),
                          Icon(
                            Icons.comment,
                            color: Colors.grey.withOpacity(0.4),
                            size: 30,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '325',
                            style: TextStyle(fontFamily: yaziTipi, fontSize: 16),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 230,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                SizedBox(width: 5),
                                Text('2.3k')
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image: AssetImage(logoPath)),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Center(
            child: Text(
              'Follow',
              style: TextStyle(fontFamily: yaziTipi, fontSize: 14, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
