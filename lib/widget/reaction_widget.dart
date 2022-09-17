import 'package:flutter/material.dart';

class RelatedTab extends StatelessWidget {
  const RelatedTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 5, right: 18),
        child: SingleChildScrollView(
          child: Column(children: [
            RelatedCard(
                function: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Related",
                                      style: TextStyle(color: Color(0xFF687684), fontSize: 20, fontWeight: FontWeight.w800),
                                    ),
                                    InkWell(
                                      onTap: () {
                                          Navigator.pop(context);
                                        },
                                      child: Image.asset("assets/image-3.png"))
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 51,
                                      height: 31,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black),
                                      child: const Center(
                                        child: Text(
                                          "Top",
                                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Divider(),
                                SizedBox(
                                  height: 20,
                                ),
                                RelatedCard(
                                  image: "assets/1200x-1 1.png",
                                  name: "Liz Truss will be UK’s next Prime Minister?",
                                  function: () {},
                                ),
                                RelatedCard(
                                  image: "assets/image 1.png",
                                  name: "Liz Truss will be UK’s next Prime Minister?",
                                  function: () {},
                                ),
                                RelatedCard(
                                  image: "assets/1200x-1 1.png",
                                  name: "Liz Truss will be UK’s next Prime Minister?",
                                  function: () {},
                                ),
                                RelatedCard(
                                  image: "assets/image 1.png",
                                  name: "Liz Truss will be UK’s next Prime Minister?",
                                  function: () {},
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                image: "assets/image 1.png",
                name: "British Pound will fall after Prime Minister elections?"),
            RelatedCard(
              image: "assets/1200x-1 1.png",
              name: "Liz Truss will be UK’s next Prime Minister?",
              function: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Related",
                                    style: TextStyle(color: Color(0xFF687684), fontSize: 20, fontWeight: FontWeight.w800),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Image.asset("assets/image-3.png"))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 51,
                                    height: 31,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black),
                                    child: const Center(
                                      child: Text(
                                        "Top",
                                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Divider(),
                              SizedBox(
                                height: 20,
                              ),
                              RelatedCard(
                                image: "assets/1200x-1 1.png",
                                name: "Liz Truss will be UK’s next Prime Minister?",
                                function: () {},
                              ),
                              RelatedCard(
                                image: "assets/image 1.png",
                                name: "Liz Truss will be UK’s next Prime Minister?",
                                function: () {},
                              ),
                              RelatedCard(
                                image: "assets/1200x-1 1.png",
                                name: "Liz Truss will be UK’s next Prime Minister?",
                                function: () {},
                              ),
                              RelatedCard(
                                image: "assets/image 1.png",
                                name: "Liz Truss will be UK’s next Prime Minister?",
                                function: () {},
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            )
          ]),
        ),
      ),
    );
  }
}

class RelatedCard extends StatelessWidget {
  const RelatedCard({
    required this.function,
    required this.image,
    required this.name,
    Key? key,
  }) : super(key: key);
  final String image;
  final String name;
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 18),
        height: 85,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border.all(color: Color(0xFFCED5DC), width: 0.33)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                )),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 1,
            child: Text(
              name,
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ]),
      ),
    );
  }
}
