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
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                  width: 80,
                  height: 80,
                  child: AppNetworkImage(
                    url: category.image,
                  )),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      category.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
