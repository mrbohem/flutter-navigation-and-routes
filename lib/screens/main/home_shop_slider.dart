import 'package:flutter/material.dart';
import 'package:first/models/shop_model.dart';

class HomeShopSlider extends StatelessWidget {
  const HomeShopSlider({
    super.key,
    required this.outerBoxWeight,
  });

  final double outerBoxWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: shopData.length,
        itemBuilder: (BuildContext context, index) {
          ShopModel shop = shopData[index];
          return Container(
            margin: const EdgeInsets.only(top: 5),
            width: outerBoxWeight,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  bottom: 5,
                  child: Container(
                    height: 120,
                    width: outerBoxWeight - 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ShopNameDescription(
                      shopName: shop.shopName,
                      description: shop.description,
                    ),
                  ),
                ),
                ImageContainer(
                  outerBoxWeight: outerBoxWeight,
                  imageUrl: shop.imageUrl,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ShopNameDescription extends StatelessWidget {
  const ShopNameDescription({
    super.key,
    required this.shopName,
    required this.description,
  });

  final String shopName;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            shopName,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            description,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.outerBoxWeight,
    required this.imageUrl,
  });

  final double outerBoxWeight;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: outerBoxWeight - 70,
      height: 200,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
          // color: Colors.green,
          // borderRadius: BorderRadius.circular(20),
          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
