import 'package:flutter/material.dart';

class ItemWidget5 extends StatelessWidget {
  const ItemWidget5({super.key, this.image, this.title, this.price, this.item});
  final String? image;
  final String? title;
  final String? price;
  final String? item;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 180,
      margin: const EdgeInsets.only(right: 20, bottom: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xff1f2029),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(image!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title!,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price!,
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                ),
              ),
              Text(
                item!,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
