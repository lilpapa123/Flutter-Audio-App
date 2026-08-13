import 'package:flutter/material.dart';
import 'app_color.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors().background,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, color: AppColors().menu1Color),
                    Row(
                      children: [
                        Icon(Icons.search, color: AppColors().menu2Color),
                        SizedBox(width: 10),
                        Icon(
                          Icons.notifications,
                          color: AppColors().menu3Color,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      "Popular Books",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: AppColors().menu1Color,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                // The Stack widget should be a direct child of the Column, and it expects a 'children' property.
                children: [
                  Container(
                    height: 200,

                    child: PageView.builder(
                      controller: PageController(viewportFraction: 0.8),
                      itemCount: 5,
                      itemBuilder: (_, i) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("img/book-1.jpg"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
