import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../data/models/character.dart';
import '../pages/detail_page.dart';

class CustomGrid extends StatelessWidget {
  final Results result;

  const CustomGrid({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: const Color(0x00000000).withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Hero(
                  tag: result.image,
                  child: GestureDetector(
                    onTap: ()=> goToDetailPage(context, result),
                    child: CachedNetworkImage(
                      width: 100,
                      height: 100,
                      imageUrl: result.image,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(
                        color: Colors.grey,
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  result.name,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  goToDetailPage(BuildContext context, Results result) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) =>
                CharacterDetail(result: result)));
  }
}
