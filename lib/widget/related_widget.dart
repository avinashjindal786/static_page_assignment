


import 'package:flutter/material.dart';

class ReactionsTab extends StatelessWidget {
  const ReactionsTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 5, right: 18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/mentions.png"),
                    SizedBox(
                      width: 7,
                    ),
                    const Text(
                      "215 ",
                      style: TextStyle(color: Color(0xFF687684), fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/Comment Stroke Icon.png"),
                    SizedBox(
                      width: 7,
                    ),
                    const Text(
                      "99K",
                      style: TextStyle(color: Color(0xFF687684), fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Image.asset("assets/Group 39.png"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
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
                                    "Reactions",
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
                              const SizedBox(
                                height: 20,
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                    "assets/Round.png",
                                  ),
                                 const SizedBox(width: 20,),
                                  const Text(
                                    "Add comment...",
                                    style: TextStyle(color: Color(0xFF999999), fontSize: 14, fontWeight: FontWeight.w500),
                                  ),
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/+.png",
                                  ),
                                ],
                              ),
                             const Divider(),
                             const SizedBox(height: 15,),
                             SizedBox(
                              height: 300,
                               child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        const CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Color.fromRGBO(228, 50, 193, 1),
                                        ),
                                        Positioned.fill(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: CircleAvatar(
                                                  radius: 18,
                                                  backgroundColor: Colors.white,
                                                  child: Center(
                                                    child: Image.asset(
                                                      "assets/Avatar.png",
                                                      width: 140,
                                                      height: 140,
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                ))),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children:[
                                       const Text(
                                          "Prof.alison   1h ago",
                                          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
                                        ),
                                         SizedBox(
                                          height: 130,
                                          width: MediaQuery.of(context).size.width * 0.75,
                                          child: const Text(
                                            "If China does indeed attack Taiwan soon, October is the likely time since the Taiwan Strait waters will be calm, facilitating amphibious operations. The drills around Taiwan allowed China to build up forces in Fujian, which is part of what's needed before an invasion.",
                                            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 17,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset("assets/Like.png",),
                                            const SizedBox(width: 7,),
                                            Image.asset("assets/Dislike.png")
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                       const Text("5 REPLIES",
                                        style: TextStyle(color: Color(0xFF1A73FD), fontSize: 15, fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                             ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
                
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Color.fromRGBO(228, 50, 193, 1),
                      ),
                      Positioned.fill(
                          child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundColor: Colors.white,
                                child: Center(
                                  child: Image.asset(
                                    "assets/Avatar.png",
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ))),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Flexible(
                    flex: 1,
                    child: Text(
                      "I will be surprised if #China will in fact attack Taiwan. Doing so requires lots of... more ",
                      style: TextStyle(color: Color(0xFF687684), fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48.0, top: 12, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const  Text(
                    "Add comment...",
                    style: TextStyle(color: Color(0xFF999999), fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Image.asset(
                    "assets/+.png",
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class LoginButton extends StatelessWidget {
  LoginButton({
    required this.name,
    required this.function,
    Key? key,
  }) : super(key: key);
  final String name;
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 56,
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(left: 38.0, right: 38.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 45,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                      Color.fromRGBO(242, 28, 200, 1),
                      Color.fromRGBO(253, 159, 235, 1),
                    ]),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(child: Image.asset("assets/icons8-news.png")),
                ),
                Image.asset("assets/Markets.png"),
                Image.asset("assets/Portfolio.png"),
                Image.asset("assets/Profile.png")
              ],
            ),
          )),
    );
  }
}
