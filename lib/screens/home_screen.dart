import 'package:binance_clone/utils/carousel_slider_home.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171E26),
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(15),
          child: MaterialButton(
            onPressed: () {},
            color: Colors.grey,
            textColor: Colors.white,
            child: const Icon(
              Icons.person,
              size: 19,
              color: Colors.black,
            ),
            padding: const EdgeInsets.all(1),
            shape: const CircleBorder(),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.qr_code_scanner,
              color: Colors.grey,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
        backgroundColor: Colors.black12,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                CarouselSliderHome(),
                SizedBox(
                  height: 20,
                  child: Row(
                    children: const [
                      Icon(Icons.speaker_phone),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Text(
                        "Introducing the Binance Vanilla Options Market Maker Program",
                        maxLines: 1,
                      )),
                      Icon(Icons.list)
                    ],
                  ),
                ),
                body(context),
                const SizedBox(
                  height: 13,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget body(BuildContext context) {
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40.0),
        topRight: Radius.circular(40.0),
      ),
      color: Color(0xff1F2630),
    ),
    child: Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () => {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const <Widget>[
                        Icon(
                          Icons.add,
                          color: Color(0xffd1af19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Deposit",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () => {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const <Widget>[
                        Icon(
                          Icons.people,
                          color: Color(0xffd1af19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Referal",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () => {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const <Widget>[
                        Icon(
                          Icons.flight,
                          color: Color(0xffd1af19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Battle",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () => {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const <Widget>[
                        Icon(
                          Icons.arrow_back_sharp,
                          color: Color(0xffd1af19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Margin",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () => {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const <Widget>[
                        Icon(
                          Icons.add,
                          color: Color(0xffd1af19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Launchpad",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () => {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const <Widget>[
                        FaIcon(
                          FontAwesomeIcons.dollarSign,
                          size: 18,
                          color: Color(0xffd1af19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Savings",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () => {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const <Widget>[
                        Icon(
                          Icons.flight,
                          color: Color(0xffd1af19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Liquid Swap",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () => {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const <Widget>[
                        Icon(
                          Icons.more_horiz_outlined,
                          color: Color(0xffd1af19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "More",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 120,
              width: MediaQuery.of(context).size.width / 2 - 15,
              child: Container(
                decoration: const BoxDecoration(color: Color(0xff29313C)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Deposit AUD",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "PatID Transfer",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('pay ID'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_outlined),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 120,
              width: MediaQuery.of(context).size.width / 2 - 15,
              child: Container(
                decoration: const BoxDecoration(color: Color(0xff29313C)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Buy with AUD",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Visa, Mastercard",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.bitcoin),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_outlined),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Row(
                  children: const [Text("BNB/BUSD"), Text("+40.30%")],
                ),
                const Text("240,000"),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Sparkline(
                    data: data,
                    fillMode: FillMode.below,
                    lineColor: const Color(0XFF917518),
                    fillGradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0XFF917518), Color(0XFF1F2630)],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Row(
                  children: const [Text("BNB/BUSD"), Text("+40.30%")],
                ),
                const Text("240,000"),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Sparkline(
                    data: data,
                    fillMode: FillMode.below,
                    lineColor: const Color(0XFF917518),
                    fillGradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0XFF917518), Color(0XFF1F2630)],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Row(
                  children: const [Text("BNB/BUSD"), Text("+40.30%")],
                ),
                const Text("240,000"),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Sparkline(
                    data: data,
                    fillMode: FillMode.below,
                    lineColor: const Color(0XFF917518),
                    fillGradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0XFF917518), Color(0XFF1F2630)],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 70,
          color: Colors.white10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Earn"),
                      SizedBox(height: 5),
                      Text("Earn crypto while you sleep"),
                    ],
                  ),
                ),
                const FaIcon(
                  FontAwesomeIcons.bitcoin,
                  size: 35,
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
