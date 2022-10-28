import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../data/models/character.dart';

class CustomGrid extends StatelessWidget {
  final Results result;

  const CustomGrid({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Column(
        children: [
          CachedNetworkImage(
            width: 90,
            height: 90,
            imageUrl: result.image,
            placeholder: (context, url) => const CircularProgressIndicator(
              color: Colors.grey,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Text(
            result.name,
            style: Theme.of(context).textTheme.bodyText2,
          )
        ],
      ),
    );
  }
}
