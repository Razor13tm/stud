import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stud/data/models/character.dart';
import 'package:url_launcher/url_launcher.dart';

class CharacterDetail extends StatefulWidget {
  final Results result;

  const CharacterDetail({super.key, required this.result});

  @override
  State<CharacterDetail> createState() => _CharacterDetailState();
}

class _CharacterDetailState extends State<CharacterDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  backgroundColor: Colors.white,
                  expandedHeight: 300,
                  iconTheme: const IconThemeData(
                    color: Colors.black,
                    size: 35,
                  ),
                  collapsedHeight: 60,
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: CachedNetworkImage(
                      imageUrl: widget.result.image,
                      fit: BoxFit.fill,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(
                        color: Colors.grey,
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Name:  ${widget.result.name}',
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Status:  ${widget.result.status}',
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Species:  ${widget.result.species}',
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Gender:  ${widget.result.gender}',
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Episodes: ',
                  style: Theme.of(context).textTheme.headline2,
                ),
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: widget.result.episode.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: InkWell(
                          onTap: () async {
                            final urlString = Uri.parse(widget.result.episode[index]).toString();
                            await launch(urlString, forceWebView: true);
                          },
                          child: Container(
                            height: 50,
                            color: Colors.white.withOpacity(0.1),
                            child: Center(
                                child: Text(
                              widget.result.episode[index],
                              style: Theme.of(context).textTheme.caption,
                            )),
                          ),
                        ),
                      );
                    })
              ],
            ),
          )),
    );
  }
}
//
// return Scaffold(
// backgroundColor: const Color(0x00000000).withOpacity(0.5),
// body: Container(
// alignment: Alignment.center,
// margin: const EdgeInsets.all(10),
// child: Padding(
// padding: const EdgeInsets.all(40.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Hero(
// tag: widget.result.image,
// child: ClipRRect(
// borderRadius: BorderRadius.circular(10),
// child: CachedNetworkImage(
// width: 300,
// height: 300,
// imageUrl: widget.result.image,
// placeholder: (context, url) =>
// const CircularProgressIndicator(
// color: Colors.grey,
// ),
// errorWidget: (context, url, error) =>
// const Icon(Icons.error),
// ),
// ),
// ),
// const SizedBox(
// height: 30,
// ),
// Align(
// alignment: FractionalOffset.bottomCenter,
// child: OutlinedButton(
// style: OutlinedButton.styleFrom(
// backgroundColor: Colors.white,
// shape: const StadiumBorder(),
// ),
// onPressed: () {},
// child: const Text(
// 'BACK',
// style: TextStyle(color: Colors.black, fontSize: 22),
// ),
// ),
// )
// ],
// ),
// ),
// ));

// class CharacterDetail extends StatefulWidget {
//   final Results result;
//
//   const CharacterDetail({Key? key, required this.result}) : super(key: key);
//
//   @override
//   State<CharacterDetail> createState() => _CharacterDetailState();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: NestedScrollView(
//         headerSliverBuilder: (context, innerBoxIsScrolled) {
//           return [SliverAppBar(
//             expandedHeight: 300,
//             floating: true,
//             pinned: true,
//             flexibleSpace: FlexibleSpaceBar(
//               background:CachedNetworkImage(
//                 imageUrl: widget.result.image,
//                 placeholder: (context, url) =>
//                 const CircularProgressIndicator(
//                   color: Colors.grey,
//                 ),
//                 errorWidget: (context, url, error) => const Icon(Icons.error),
//               ),
//
//
//             ),
//           )];
//         },
//         body: Container(),
//       ),
//     );
//   }
