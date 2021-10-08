import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0XFFE5E5E5),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  //头部
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Anti-Scammer',
                        style: TextStyle(
                          color: Color(0xfffe7941),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Image.asset('assets/refresh.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  //人物图片
                  Stack(
                    children: [
                      Image.asset(
                        'assets/Rectangle 138.png',
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        top: 20,
                        right: 14,
                        child: Image.asset('assets/more.png'),
                      ),
                    ],
                  ),
                  Container(
                    width: 328,
                    // height: 281,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '话题',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            '线上约会已经成了我们寻找另一半的新途径。在现实中社交圈有限,在网上地域距离变为零让我们有了更多的机会认识新的人。',
                            style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 23,
                          ),
                          Flex(
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  width: 56,
                                  height: 56,
                                  child: Image.asset(
                                    'assets/yes.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  width: 56,
                                  height: 56,
                                  child: Image.asset(
                                    'assets/no.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 24,
                                child: Text(
                                  '48人觉得这是Scammer',
                                  style: TextStyle(
                                    color: Color(0xff999999),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              Container(
                                height: 24,
                                child: Text(
                                  '48人觉得这是Scammer',
                                  style: TextStyle(
                                    color: Color(0xff999999),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/Rectangle 141.png',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
