import 'dart:convert';

import 'package:assignment/network_layer/match_model.dart';
import 'package:assignment/screens/score_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}


// we can also make different class for colors,hardcoded string, images etc.
class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  MatchModel? model;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    setState(() {
      getData();
    });
  }

  getData() async {
    model = await getMatchData();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: true,
              leading:const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              pinned: true,
              expandedHeight: 300,
              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  double offset = constraints.biggest.height;
                  bool isExpanded = offset == 300.0;

                  return FlexibleSpaceBar(
                    centerTitle: false,
                    title: isExpanded == true
                        ? null
                        : Row(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        model?.data?.matchData?.teama
                                                ?.logoUrl ??
                                            '',
                                        height: 20,
                                        width: 20,
                                      ),
                                      // Icon(Icons.flag,color: Colors.red,),
                                      const Text(
                                        " 212/2",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const CircleAvatar(
                                    maxRadius: 10,
                                    backgroundColor: Colors.grey,
                                    child: Text("vs",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 14)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        " 111/8 ",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                      Image.network(
                                        model?.data?.matchData?.teamb
                                                ?.logoUrl ??
                                            '',
                                        height: 20,
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'assets/images/cricket_bg.png',
                          fit: BoxFit.cover,
                        ),
                        if (isExpanded)
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                model?.data?.matchData?.title ?? 'Teams',
                                style:const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 40),
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(10)
                                ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                        "Asia Cup - India vs Afghanistan, Match 5(A1 v B1"),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      //mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          children: [
                                            Image.network(
                                              model?.data?.matchData?.teama
                                                      ?.logoUrl ??
                                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJar2fDsIo8wpDFeCYNw6ac1QEqbKKDd6vVQ&usqp=CAU",
                                              height: 20,
                                              width: 20,
                                            ),
                                            const Text("  IND")
                                          ],
                                        ),
                                        const Text("212/2 (20 ov)")
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.network(
                                              model?.data?.matchData?.teamb
                                                      ?.logoUrl ??
                                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJar2fDsIo8wpDFeCYNw6ac1QEqbKKDd6vVQ&usqp=CAU",
                                              height: 20,
                                              width: 20,
                                            ),
                                            const  Text("  AFG")
                                          ],
                                        ),
                                        const  Text("111/8 (20 ov)")
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    const  Text("India won by 101 runs"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                      color: Colors.white,
                      margin:const EdgeInsets.only(top: 10),
                      child: DefaultTextStyle(
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black),
                        child: TabBar(
                          onTap: (int index) {},
                          controller: tabController,
                          indicatorColor: Colors.red,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorWeight: 2.5,
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 0),
                          tabs: const [
                            Tab(
                              child: Text(
                                "Squads",
                              ),
                            ),
                            Tab(
                              child: Text("Scorecard"),
                            ),
                            Tab(
                              child: Text("Commentary"),
                            ),
                            Tab(
                              child: Text("Highlights"),
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: size.height,
                    child: TabBarView(
                      controller: tabController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const Center(
                            child: Text(
                          "Squads",
                          style: TextStyle(color: Colors.black),
                        )),
                        ScoreCard(model: model),
                        const Center(
                            child: Text(
                          "Commentary",
                          style: TextStyle(color: Colors.black),
                        )),
                        const Center(
                            child: Text(
                          "Highlights",
                          style: TextStyle(color: Colors.black),
                        )),
                      ],
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


// We can make different class for this also
Future<MatchModel> getMatchData() async {
  final response = await http.get(Uri.parse(
      "https://production-rest-microservice.thesportstak.com//api/v2/cricket/getScoreCard/56622"));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    debugPrint("data <<<<<<<<<<<<<<++++++++ $data");

    MatchModel matchResponse = MatchModel.fromJson(data);
    return matchResponse;
  } else {
    throw Exception('Failed to load data');
  }
}
