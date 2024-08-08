import 'package:flutter/material.dart';
import 'package:spotify_app/main.dart';

class ACSearch extends StatefulWidget {
  const ACSearch({super.key});

  @override
  State<ACSearch> createState() => _ACSearchState();
}

class _ACSearchState extends State<ACSearch> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    return Container(
      color: paceScaffoldBgColor,
      padding: EdgeInsets.all(safePadding),
      child: ListView(
        children: [
          Container(
            color: Colors.transparent,
            padding: EdgeInsets.only(top: safePadding, bottom: safePadding),
            alignment: Alignment.centerLeft,
            child: Text(
              'Browse all',
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSizeSearch,
              ),
            ),
          ),
          searchGridView()
        ],
      ),
    );
  }
}

Widget searchGridView() {
  double width = (safeWidth / 2) - (safePadding * 1.5);
  double height = width * (2 / 3);

  return GridView.count(
    crossAxisSpacing: safePadding,
    mainAxisSpacing: safePadding,
    childAspectRatio: (width / height),
    crossAxisCount: 2,
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: [
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(), searchGridItem(),
      searchGridItem(),
    ],
  );
}

Widget searchGridItem() {
  double width = (safeWidth / 2) - (safePadding * 1.5);
  double height = width * (2 / 3);

  return Container(
    clipBehavior: Clip.hardEdge,
    alignment: Alignment.topLeft,
    decoration: const BoxDecoration(
      color: Colors.pink,
      borderRadius: BorderRadius.all(Radius.circular(5)),
      //image: DecorationImage(image: NetworkImage(url, scale: 0.2), alignment: Alignment.bottomRight),
    ),
    child: Row(
      children: [
        Container(
          width: width * (2 / 3),
          padding: EdgeInsets.only(left: safePadding * 0.5, top: safePadding),
          alignment: Alignment.topLeft,
          child: Text(
            'Podcasts',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: fontSizeSearch,
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          width: width / 3,
          child: Transform.rotate(
            angle: 100/360,
            origin: Offset((width / 6) - (width / 8), height / 2),
            child: Container(
              //alignment: Alignment.bottomLeft,
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: NetworkImage(url),
                ),
              ),
            ),
          ),
        ),
        /*RotationTransition(
          turns: AlwaysStoppedAnimation(15 / 360),
          child: Container(
            width: width / 3,
            color: Colors.grey,
          ),
        )*/
      ],
    ),
  );
}

/*
Widget searchGridItem() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.pink,
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      image: DecorationImage(image: NetworkImage(url, scale: 0.2), alignment: Alignment.bottomRight),
    ),
    child: Container(
      padding: EdgeInsets.only(left: safePadding * 0.5, top: safePadding),
      alignment: Alignment.topLeft,
      child: Text(
        'Podcasts',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: fontSizeSearch,
        ),
      ),
    ),
  );
}*/