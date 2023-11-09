import 'package:flutter/material.dart';
import 'package:ecommerce_one/models/product.dart';

class ListItemHome extends StatelessWidget {
  final Product product;
  const ListItemHome({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Image.network(
                  product.imgUrl,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 50,
                  height: 30,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          24,
                        ),
                        color: Colors.red),
                    child: Center(
                      child: Text(
                        "${product.discountValue}%",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            product.category,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.grey),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
              text: "${product.price}\$",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.red, decoration: TextDecoration.lineThrough),
            ),
            TextSpan(
              text: " ${product.price * (product.discountValue) / 100}\$",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.green),
            ),
          ])),
        ],
      ),
    );
  }
}
