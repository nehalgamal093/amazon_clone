import 'dart:io';
import 'package:amazon_clone/models/product.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:amazon_clone/constants/utils.dart';
import 'package:flutter/material.dart';

class AdminServices{
  void sellProduct({
  required BuildContext context,
    required String name,
    required String description,
    required double price,
    required double quantity,
    required String category,
    required List<File> images,
}) async{
try{
final cloudinary = CloudinaryPublic('doomfqwge', 'fbgbta3w');
List<String> imageUrls = [];
for(int i =0; i<images.length; i++){
  CloudinaryResponse res =
  await cloudinary.uploadFile(CloudinaryFile.fromFile(images[i].path,folder:name));
  imageUrls.add(res.secureUrl);
}
Product product = Product(name: name, description: description, quantity: quantity, images: imageUrls, category: category, price: price);

} catch(e){
  showSnackBar(context, e.toString());
}
  }
}