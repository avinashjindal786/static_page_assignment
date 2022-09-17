

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TradingBanner extends StatelessWidget {
  const TradingBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
            Color.fromRGBO(46, 32, 219, 0.988),
            Color.fromRGBO(228, 50, 193, 1),
          ]),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 28.0, right: 28, top: 8, bottom: 8),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "CHANCE",
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w900),
              ),
              Text(
                "11%",
                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Image.asset("assets/image-2.png"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "24H",
                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
              ),
              Text(
                "+25495\$",
                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "\$09",
                style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: 60,
                height: 25,
                decoration: BoxDecoration(color: const Color(0xFF21FFAA), borderRadius: BorderRadius.circular(5), boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  )
                ]),
                child: const Center(
                  child: Text(
                    "Yes",
                    style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "\$89",
                style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: 60,
                height: 25,
                decoration: BoxDecoration(color: Color(0xFFE432C1), borderRadius: BorderRadius.circular(5), boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  )
                ]),
                child: const Center(
                  child: Text(
                    "No",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}

class ResearchTab extends StatelessWidget {
  const ResearchTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 5, right: 18),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "215 Expert Opinion",
              style: TextStyle(color: Color.fromRGBO(104, 118, 132, 1), fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: const [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromRGBO(201, 48, 197, 0.1),
                    ),
                    Positioned.fill(
                        child: Align(
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Color.fromRGBO(201, 48, 197, 0.1),
                              child: Center(
                                child: Text(
                                  "12%",
                                  style: TextStyle(color: Color.fromRGBO(228, 50, 193, 1), fontSize: 20, fontWeight: FontWeight.w700),
                                ),
                              ),
                            ))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width * 0.45,
                            lineHeight: 10.0,
                            percent: 0.2,
                            progressColor: Color.fromRGBO(228, 50, 193, 1),
                            backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                            barRadius: const Radius.circular(4),
                          ),
                          const Text(
                            "12% Buy Yes",
                            style: TextStyle(color: Color.fromRGBO(228, 50, 193, 1), fontSize: 14, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width * 0.45,
                            lineHeight: 10.0,
                            percent: 0.9,
                            backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                            barRadius: const Radius.circular(4),
                            progressColor: Color.fromRGBO(104, 118, 132, 1),
                          ),
                          const Text(
                            "88% Buy No",
                            style: TextStyle(color: Color.fromRGBO(104, 118, 132, 1), fontSize: 14, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width * 0.45,
                            lineHeight: 10.0,
                            barRadius: const Radius.circular(4),
                            percent: 0.1,
                            backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                            progressColor: Color.fromRGBO(104, 118, 132, 1),
                          ),
                          const Text(
                            "1% No Resolve",
                            style: TextStyle(color: Color.fromRGBO(104, 118, 132, 1), fontSize: 14, fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ResearchList(),
                  SizedBox(
                    width: 15,
                  ),
                  ResearchList(),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ]),
        ),
      ),
    );
  }
}

class ResearchList extends StatelessWidget {
  const ResearchList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.25), blurRadius: 3, offset: Offset(0, 0))],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12, top: 6, bottom: 6),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Thehill",
                style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
              ),
              Text(
                "1 Sept",
                style: TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 12, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Flexible(
            flex: 1,
            child: Text(
              "Last week, the dire warnings that appeared in the Wall Street Journal, The Economist and Foreign Affairs about China's imminent war with or...",
              style: TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 12, fontWeight: FontWeight.w700),
            ),
          )
        ]),
      ),
    );
  }
}
