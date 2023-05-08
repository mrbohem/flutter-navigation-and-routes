class ShopModel {
  String shopName;
  String description;
  String imageUrl;

  ShopModel({
    required this.shopName,
    required this.description,
    required this.imageUrl,
  });
}

List<ShopModel> shopData = [
  ShopModel(
    shopName: 'singhal Hardware and Plywood',
    description: 'some description and another description',
    imageUrl:
        'https://www.smergers.com/media/businessphoto/28793-1555823378-6a5ddb02-7b51-4141-ae18-e809779ee505.jpg',
  ),
  ShopModel(
    shopName: 'Balaji Electronics',
    description: 'some description and another description',
    imageUrl:
        'https://electronicsmaker.com/wp-content/uploads/2016/10/Electronics-retail-store-India.png',
  ),
  ShopModel(
    shopName: 'New Gaurav Electronics',
    description: 'some description and another description',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR16GucPxfoMWtiGOXUazxRFfXzX4OZWd3pEJGS-8iJw&usqp=CAU&ec=48665699',
  ),
];
