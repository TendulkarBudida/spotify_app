import 'package:flutter/material.dart';
import 'package:spotify_app/main.dart';

class ACHome extends StatefulWidget {
  const ACHome({super.key});

  @override
  State<ACHome> createState() => _ACHomeState();
}

class _ACHomeState extends State<ACHome> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    return Container(
      color: paceScaffoldBgColor,
      padding: EdgeInsets.only(top: safePadding, left: safePadding, right: safePadding),
      child: ListView(
        children: [
          homeGetRow1(),
          homeGetRow2(),
          homeGetRow3(),
          homeGetRow4(),
          homeGetRow5(),
          homeGetRow6(),
          homeGetRow7(),
          homeGetRow8(),
          homeGetRow9(),
          homeGetRow10(),
          homeGetRow11(),
          homeGetRow12(),
          homeGetRow13(),
          homeGetRow14(),
          homeGetRow15(),
          homeGetRow16(),
          homeGetRow17(),
          homeGetRow18(),
          homeGetRow19(),
          homeGetRow20(),
          homeGetRow21(),
        ],
      ),
    );
  }
}

BoxDecoration boxDecorationCurvedEdges(Color color) {
  return BoxDecoration(color: color, borderRadius: const BorderRadius.all(Radius.circular(10)));
}

Widget getRow1Item(String label) {
  double size = ((safeWidth / 2) - (safePadding * 0.375) - safePadding);

  return Container(
    decoration: BoxDecoration(
      color: Colors.pink,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      image: DecorationImage(image: NetworkImage(url), alignment: Alignment.centerLeft),
    ),
    child: Row(
      children: [
        SizedBox(
          width: size / 3,
          height: size / 3,
        ),
        Container(
          width: size * (2/3),
          height: size / 3,
          padding: EdgeInsets.all(safePadding * 0.5),
          alignment: Alignment.centerLeft,
          child: Text(
            label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: fontSizeHome,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget homeGetRow1() {
  double width = (safeWidth / 2) - (safePadding * 0.375) - safePadding;
  double height = width / 3;

  return GridView.count(
    crossAxisSpacing: safePadding * 0.75,
    mainAxisSpacing: safePadding * 0.75,
    childAspectRatio: (width / height),
    crossAxisCount: 2,
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: [
      getRow1Item('Spider-Verse: The Official Playlist'),
      getRow1Item('アニメ'),
      getRow1Item('Sed'),
      getRow1Item('Liked Songs'),
      getRow1Item('all one direction songs'),
      getRow1Item('niQue'),
    ],
  );
}

Widget homeGetRow2() {
  return Column(
    children: [
      homeGetRow2Title('Based on your recent listening'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow2Title(String title) {
  return Container(
    padding: EdgeInsets.only(top: safePadding * 2, bottom: safePadding),
    width: double.infinity,
    child: Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: fontSizeHomeMain,
      ),
    ),
  );
}

Widget homeGetRow2Items(String image, String info) {
  double width = (2 / 5) * safeWidth;

  return SizedBox(
    width: width,
    //color: Colors.pink,
    child: Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.white),
              alignment: Alignment.center,
              child: Image(image: NetworkImage(image))
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(safePadding / 3),
                width: (width / 15) + (safePadding * (2 / 3)),
                child: const Image(
                  image: AssetImage('images/spotify.png'),
                ),
              ),
            )
          ],
        )/*
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topLeft,
              image: NetworkImage('https://cdn.pixabay.com/photo/2021/11/29/14/46/spotify-6832784_1280.png'),
            )
          ),
          child: Image(image: NetworkImage(image))
        )*/, SizedBox(height: safePadding * 0.75,),
        Text(
          info,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
            fontSize: fontSizeHomeSubs,
          ),
        ),
      ],
    ),
  );
}

Widget homeGetRow3() {
  return Column(
    children: [
      homeGetRow2Title('Best of artists'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow4() {
  return Column(
    children: [
      homeGetRow2Title('Recently Played ------'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow5() {
  return Column(
    children: [
      homeGetRow2Title('Shows that you might like ------'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow6() {
  return Column(
    children: [
      homeGetRow2Title('Jump back in'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow7() {
  return Column(
    children: [
      homeGetRow2Title('Recommended for today'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow8() {
  return Column(
    children: [
      homeGetRow2Title('India\'s Best'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow9() {
  return Column(
    children: [
      homeGetRow2Title('Uniquely yours'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow10() {
  return Column(
    children: [
      homeGetRow2Title('Sad Songs'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow11() {
  return Column(
    children: [
      homeGetRow2Title('Your top mixes'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow12() {
  return Column(
    children: [
      homeGetRow2Title('Yours friends are listening to ------'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow13() {
  return Column(
    children: [
      homeGetRow2Title('Popular albums'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow14() {
  return Column(
    children: [
      homeGetRow2Title('----------'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow15() {
  return Column(
    children: [
      homeGetRow2Title('Charts'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow16() {
  return Column(
    children: [
      homeGetRow2Title('Made For Us'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow17() {
  return Column(
    children: [
      homeGetRow2Title('Today\'s biggest hits'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow18() {
  return Column(
    children: [
      homeGetRow2Title('More of what you like'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow19() {
  return Column(
    children: [
      homeGetRow2Title('Made for iNZaYnTenduL'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow20() {
  return Column(
    children: [
      homeGetRow2Title('Mood'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}

Widget homeGetRow21() {
  return Column(
    children: [
      homeGetRow2Title('Throwback'),
      SizedBox(
        height: ((1 / 2) * safeWidth) + (safePadding * 0.75),
        //color: Colors.blue,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            homeGetRow2Items(url, 'The Weeknd, Dua Lipa, Glass Animals, The Kid LAROI'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Selena Gomez, Dua Lipa, Rihanna, Calvin Harris'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Jonas Brothers, Alessia Cara, One Direction, Bebe Rexha'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Taylor Swift, Selena Gomez, Miley Cyrus, Bruno Mars'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Ed Sheeran, Harry Styles, Shawn Mendes, Justin Bieber'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Miley Cyrus, Taylor Swift, Bebe Rexha, One Direction'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'The Weeknd, Harry Styles, Ed Sheeran, Imagine Dragons'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Bebe Rexha, Selena Gomez, OneRepublic, Conan Grey'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Calvin Harris, Dua Lipa, Taylor Swift, Sia, Miley Cyrus'), SizedBox(width: safePadding,),
            homeGetRow2Items(url, 'Dua Lipa, Little Mix, Calvin Harris, Ed Sheeran'),
          ],
        ),
      )
    ],
  );
}
