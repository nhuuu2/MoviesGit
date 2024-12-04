import 'package:flutter/material.dart';
import '../widgets/CustomNavbar.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int _selectedSection = 0;

  final List<Widget> _contentWidgets = [
    MoviesSection(),
    TVSeriesSection(),
    DocumentarySection(),
    SportsSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C27),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Find Movies, TV series, and more...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF2C2C3C),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white60,
                    ),
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.white60),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.white60),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSectionButton('Movies', 0),
                  _buildSectionButton('TV Series', 1),
                  _buildSectionButton('Documentary', 2),
                  _buildSectionButton('Sports', 3),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _contentWidgets[_selectedSection],

          ],
        ),
      ),
      bottomNavigationBar: CustomNavbar(),
    );
  }

  Widget _buildSectionButton(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSection = index;
        });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: _selectedSection == index
                ? Colors.orange
                : Colors.grey.shade800,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: _selectedSection == index ? Colors.black : Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}


class MoviesSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        Row(
          children: [
            SizedBox(width: 20),
            Column(
              children: [
                Container(
                  width: 160,
                  height: 190,
                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 160,
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              image: NetworkImage('https://th.bing.com/th/id/R.f1d054582209329c074bff98a9ac535d?rik=9QrXNYYRWhTs1g&riu=http%3a%2f%2fwww.movieworlds.com%2fimages%2ffilmplakate%2f11908.jpg&ehk=cFuQ6b7Vx271oxvBsbLCnalE7kM0hjApWnoFHm5NJCs%3d&risl=&pid=ImgRaw&r=0'),
                          fit: BoxFit.cover)
                        ),
                      ),
                      const Expanded(child: Text('Soul (2020)',style:
                        TextStyle(color: Colors.white, fontSize: 14),))
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 160,
                  height: 190,

                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 160,
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage('https://th.bing.com/th/id/OIP.ZksRViNK-9r1tV8sDMSCAwHaEK?w=316&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'),
                                fit: BoxFit.cover)
                        ),
                      ),
                      const Expanded(child: Text('Knives Out (2019)',style:
                      TextStyle(color: Colors.white, fontSize: 14),))
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 160,
                  height: 190,

                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 160,
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                                image: NetworkImage('https://th.bing.com/th/id/R.e07ec076a473f5ac1b729708a074fff1?rik=auV%2bEZa2zVLEPw&pid=ImgRaw&r=0'),
                                fit: BoxFit.cover)
                        ),
                      ),
                      const Expanded(child: Text('Onward (2020)',style:
                      TextStyle(color: Colors.white, fontSize: 14),))
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                Container(
                  width: 160,
                  height: 190,

                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 160,
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                                image: NetworkImage('https://www.chroniquedisney.fr/imgFilm/2020/2020-mulan-01-big.jpg'),
                                fit: BoxFit.cover)
                        ),
                      ),
                      const Expanded(child: Text('Mulan (2020)',style:
                      TextStyle(color: Colors.white, fontSize: 14),))
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 160,
                  height: 190,
                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                                image: NetworkImage('https://th.bing.com/th/id/OIP.uFvq-n1clG3d_FSYIimEWgHaKt?rs=1&pid=ImgDetMain'),
                                fit: BoxFit.cover,)
                        ),
                      ),
                      const Expanded(child: Text('Pikachu',style:
                      TextStyle(color: Colors.white, fontSize: 14),))
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 160,
                  height: 190,

                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 160,
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage('https://th.bing.com/th/id/OIP.OO4F_5r0L-cttqQhrEg04gHaEK?rs=1&pid=ImgDetMain'),
                                fit: BoxFit.cover)
                        ),
                      ),
                      const Expanded(child: Text('Demon slayer',style:
                      TextStyle(color: Colors.white, fontSize: 14),))
                    ],
                  ),
                ),
              ],
            )
          ],
        )

      ],
    );

  }
}



class TVSeriesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'TV Series Section Content',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}

class DocumentarySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Documentary Section Content',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}

class SportsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Sports Section Content',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}



