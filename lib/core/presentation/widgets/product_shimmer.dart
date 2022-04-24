import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProductShimmer extends StatelessWidget {
  const ProductShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      childAspectRatio: .6,
      physics: const NeverScrollableScrollPhysics(),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              width: double.infinity,
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
          Row(
            children: const [
              ShimmerWidget(
                width: 100,
              ),
              Spacer(),
              ShimmerWidget(
                width: 30,
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              ShimmerWidget(
                width: 80,
                height: 10,
              ),
              SizedBox(
                width: 8,
              ),
              ShimmerWidget(
                width: 80,
                height: 10,
              ),
            ],
          ),
        ],
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
