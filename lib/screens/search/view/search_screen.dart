import 'package:excersie2/const/consts.dart';
import 'package:excersie2/screens/search/model/models.dart';
import 'package:excersie2/screens/search/view/form_city.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const routeName = '/search_screen';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  GetDataWeatherCity getDataWeatherCity = GetDataWeatherCity();
  TextEditingController editingController = TextEditingController();
  List<WeatherCity> showListData = [];
  List<WeatherCity> listCityDefault = [];

  void filterSearchResults(String value) {
    if (value.trim().isNotEmpty) {
      List<WeatherCity> dummyListData = [];
      listCityDefault.forEach((item) {
        if (item.city.toLowerCase().contains(value.trim())) {
          dummyListData.add(item);
          print(item.city);
        }
      });
      setState(() {
        showListData.clear();
        showListData.addAll(dummyListData);
      });
      return;
    } else if (value.trim().isEmpty) {
      setState(() {
        showListData.clear();
        showListData.addAll(listCityDefault);
      });
      return;
    }
  }

  @override
  void initState() {
    _initREtrieval();
    super.initState();
  }

  Future<void> _initREtrieval() async {
    listCityDefault = await getDataWeatherCity.getData();
    showListData = await getDataWeatherCity.getData();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(top: 12, left: 10, right: 10),
          height: getHeight(812),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(56, 70, 88, 1),
                Color.fromRGBO(29, 41, 66, 1),
                Color.fromRGBO(39, 56, 73, 1),
                Color.fromRGBO(35, 35, 74, 1),
                Color.fromRGBO(33, 24, 58, 1),
                Color.fromRGBO(21, 23, 44, 1),
              ],
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  const Text(
                    " Weather",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: const Icon(
                      Icons.more_horiz_sharp,
                      size: 16,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Expanded(
                child: FutureBuilder(
                  future: getDataWeatherCity.getData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      //   var parseData = snapshot.data as List<WeatherCity>;
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            height: getHeight(50),
                            child: TextField(
                              controller: editingController,
                              style: const TextStyle(color: Colors.white),
                              textAlignVertical: TextAlignVertical.center,
                              textAlign: TextAlign.left,
                              onChanged: (value) {
                                setState(() {
                                  filterSearchResults(value);
                                });
                              },
                              decoration:  InputDecoration(
                                  prefixIconConstraints:
                                      const BoxConstraints(maxWidth: 30),
                                  filled: true,
                                  fillColor: const Color.fromRGBO(30, 30, 61, 1),
                                  hintStyle: const TextStyle(
                                      color: Colors.white54, fontSize: 14),
                                  contentPadding:const  EdgeInsets.only(right: 100),
                                  hintText: "Search for a city or airport",
                                  prefixIcon: Align(
                                    widthFactor: 1.0,
                                    heightFactor: 1.0,
                                    child: Row(
                                      children: const [
                                        Text("  "),
                                        Icon(
                                          Icons.search,
                                          color: Colors.white54,
                                          size: 20,
                                        ),
                                      ],
                                    )
                                  ),
                                  border:const  OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)))),
                            ),
                          ),
                          Expanded(
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: showListData.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return FormCity(
                                        weatherCity: showListData[index]);
                                  }))
                        ],
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
