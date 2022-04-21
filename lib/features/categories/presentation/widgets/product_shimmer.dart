import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProductShimmer extends StatelessWidget {
  const ProductShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisCount: 2,
      childAspectRatio: .6,
      //physics: const NeverScrollableScrollPhysics(),
      children: List.generate(20, (index) => const ShimmerItem()),
    );
  }
}

class ShimmerItem extends StatelessWidget {
  const ShimmerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade500,
      highlightColor: Colors.grey.shade300,
      child: GridTile(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: double.infinity ,
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(24)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(end: 30),
              child: ShimmerWidget(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(end: 30),
              child: ShimmerWidget(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                ShimmerWidget(),
                SizedBox(width: 20),
                ShimmerWidget(
                  width: 30,
                ),
              ],
            ),
          ],
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
