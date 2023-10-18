import 'package:ecommerce_one/models/product.dart';
import 'package:ecommerce_one/utilities/assets.dart';
import 'package:ecommerce_one/views/widgets/list_item_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildHeaderOfList(BuildContext context,
      {required String title,
      VoidCallback? onTap,
      required String description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            InkWell(
              onTap: onTap,
              child: Text(
                "View All",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
        Text(description,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.grey))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.network(
              AppAssets.topBannerHomePageAsset,
              scale: 1.0,
              width: double.infinity,
              height: size.height * 0.26,
              fit: BoxFit.cover,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 60, vertical: 40.1),
              child: Text("Classic Clothes",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.amber, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            children: [
              _buildHeaderOfList(context,
                  title: "Sale", description: "Super Summer Sale!!"),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: dummyPorducts
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListItemHome(product: e),
                          ))
                      .toList(),
                ),
              ),
              _buildHeaderOfList(context,
                  title: "New", description: "Super Summer Sale!!"),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: dummyPorducts
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListItemHome(product: e),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
