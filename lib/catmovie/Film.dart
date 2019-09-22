import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Film extends StatefulWidget {
  @override
  _FilmState createState() => _FilmState();
}

class _FilmState extends State<Film> {
  List _swiper = [
    {"url":"https://p0.meituan.net/moviemachine/b7362f555340906684944957dfc8d5421530646.jpg@160w_220h_1e_1c"},
    {"url":"https://p0.meituan.net/movie/2918a5e403dde6e4254941968d7719ce3942369.jpg@160w_220h_1e_1c"},
    {"url":"https://p0.meituan.net/movie/c5975d98fc484027ff55d813ab3b2daa427032.jpg@160w_220h_1e_1c"},
    ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    "${_swiper[index]['url']}",
                    // fit: BoxFit.fill,
                  );
                },
                itemCount: 3,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
