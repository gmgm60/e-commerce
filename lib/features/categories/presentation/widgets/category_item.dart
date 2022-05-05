import 'package:ecommerce/core/presentation/widgets/app_network_image.dart';
import 'package:ecommerce/features/categories/domain/entities/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.category,
    required this.onTap,
  }) : super(key: key);

  final ProductsCategory category;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          AppNetworkImage(
            url: category.image,
            height: 120,
            width: 120,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category.name,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                category.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
