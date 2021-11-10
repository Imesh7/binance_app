import 'package:binance_clone/models/carousel_model.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderHome extends StatefulWidget {
  CarouselSliderHome({Key? key}) : super(key: key);

  @override
  State<CarouselSliderHome> createState() => _CarouselSliderHomeState();
}

class _CarouselSliderHomeState extends State<CarouselSliderHome> {
  final CarouselController _controller = CarouselController();
  int _current = 0;


  List<CarouselModel> carouselList = [
    CarouselModel(
        imgUrl:
            "https://i.pinimg.com/originals/c2/d7/19/c2d719b22ffef4ae3ceef8eaa356bfb8.png",
        title: "title1"),
    CarouselModel(
        imgUrl:
            "https://cryptoitunes.com/images/binance/1615732123538/original/binance-futures-spring-tournament-over-1-600-000-in-bnb-to-be-won.png",
        title: "title2"),
    CarouselModel(
        imgUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBO_AuGTThRndIWWNrPQcRGxiCgHsrqAYPCNrAI9KZz6Sx76EWJWtbS0U4gjDL6gE6SK0&usqp=CAU",
        title: "title3"),
    CarouselModel(
        imgUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR33_hpsg1qw6o5_Ouq8wB31aLXj2JspEK8lIj5X1bnreT0PVnvv-9C15UtVJhg8APzaP8&usqp=CAU",
        title: "title4"),
    CarouselModel(
        imgUrl:
            "https://cdn.airdropalert.com/images/news-feeds/binancebnbf.jfif",
        title: "title5"),
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
            items: carouselList.map((e) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              e.imgUrl,
                            ),
                            fit: BoxFit.fill),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.amber),
                    /* child: GestureDetector(
                          // child: Image.network(e.imgUrl, fit: BoxFit.fill),
                          onTap: () {
                        /* Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => NavigationScreen(),
                                    ),
                                  ); */
                      }) */
                  );
                },

              );
            }).toList(),
            options: CarouselOptions(
                height: 200,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 10),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int index, carouselPageChangedReason) {
                  setState(() {
                    _current = index;
                    print("${_current}");
                  });
                })),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: carouselList.asMap().entries.map((entry) {
            return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.grey)
                        .withOpacity(_current == entry.key ? 1 : 0.4)),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
