import 'package:flutter_news_app/model/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = <CategoryModel>[];
  CategoryModel categoryModel = new CategoryModel();

  // 1
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1543269866-487350d6fa5e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80";
  categoryModel.categoryName = "Business";
  category.add(categoryModel);

  //  2
  categoryModel = new CategoryModel();
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1499364615650-ec38552f4f34?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1566&q=80";
  categoryModel.categoryName = "Entertainment";
  category.add(categoryModel);

  //  3
  categoryModel = new CategoryModel();
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1434494878577-86c23bcb06b9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80";
  categoryModel.categoryName = "Health";
  category.add(categoryModel);

  //  4
  categoryModel = new CategoryModel();
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1532094349884-543bc11b234d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80";
  categoryModel.categoryName = "Science";
  category.add(categoryModel);

  // 5
  categoryModel = new CategoryModel();
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1461896836934-ffe607ba8211?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80";
  categoryModel.categoryName = "Sports";
  category.add(categoryModel);

  //  6
  categoryModel = new CategoryModel();
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1455849318743-b2233052fcff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80";
  categoryModel.categoryName = "Technology";
  category.add(categoryModel);

  return category;
}
