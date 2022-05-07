import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListShimmer extends StatelessWidget {
  const ListShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => const ShimmerItem());
  }
}

class ShimmerItem extends StatelessWidget {
  const ShimmerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade500,
      highlightColor: Colors.grey.shade300,
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ShimmerWidget(
              width: 100,
            ),
            SizedBox(
              height: 4,
            ),
            ShimmerWidget(
              height: 10,
            ),
            SizedBox(
              height: 4,
            ),
            ShimmerWidget(
              height: 10,
            ),
            SizedBox(
              height: 4,
            ),
            ShimmerWidget(
              height: 10,
              width: 150,
            ),
          ],
        ),
        leading: SizedBox(
          width: 80,
          height: 80,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget(
      {Key? key, this.width = double.infinity, this.height = 16})
      : super(key: key);
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey.shade500,
    );
  }
}
