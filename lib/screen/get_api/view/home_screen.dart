import 'package:exam_project/screen/get_api/modal/home_modal.dart';
import 'package:exam_project/screen/get_api/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).getData();
  }

  HomeProvider? homeProviderfalse;
  HomeProvider? homeProvidertrue;

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: 780,
            width: double.infinity,
            child: Image.asset(
              "assets/image/img1.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 780,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black45),
          ),
          FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("Error");
                } else if (snapshot.hasData) {
                  Corona? c1 = snapshot.data;
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white24,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 10),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${c1!.countriesStat![index].countryName}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text("coutry case:-${c1!.countriesStat![index].cases}"),
                                        Text("Deaths:-${c1!.countriesStat![index].deaths}"),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 40,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            color: Colors.white24
                                          ),child: Center(
                                          child: Text("Active Case:-${c1!.countriesStat![index].activeCases}"),
                                        ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: Align(alignment:Alignment.topRight,child: Column(
                                        children: [
                                          Text("${c1!.statisticTakenAt}",style: TextStyle(color: Colors.white,fontSize: 12),),
                                          SizedBox(height: 5,),
                                          Text("Total Tests :-${c1!.countriesStat![index].totalTests}",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500),),
                                        ],
                                      )),
                                    ),

                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: c1?.countriesStat?.length,
                  );
                }
                return Container(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
              future: homeProvidertrue!.getData())
        ],
      ),
    ));
  }
}
