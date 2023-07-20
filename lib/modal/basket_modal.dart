class BasketModal {
  final int id;
  final String title;
  final double price;
  final String image;

  BasketModal({
    required this.id,
    required this.image,
    required this.price,
    required this.title,
  });


  factory BasketModal.fromJson(Map json){
    return BasketModal(
      id: json['products'][0]['id'], 
      image: json['products'][0]['images'][0],
      price: json['products'][0]['price'],
      title: json['products'][0]['title ']
    );
  }
}