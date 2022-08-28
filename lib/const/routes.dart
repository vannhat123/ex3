
import 'package:excersie2/screens/detail/view/detail_screen.dart';
import 'package:excersie2/screens/home/view/home_screen.dart';
import 'package:excersie2/screens/search/view/search_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes={
  HomeScreen.routeName:(context)=> const HomeScreen(),
  DetailScreen.routeName:(context)=> const DetailScreen(),
  SearchScreen.routeName:(context)=> const SearchScreen()
};