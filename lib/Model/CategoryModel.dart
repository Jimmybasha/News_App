import 'dart:ui';

class CategoryModel{

  String id;
  String title;
  String imagePath;
  Color color;

  CategoryModel({required this.id,required this.imagePath,required this.color,required this.title});


 static List<CategoryModel> categories = [
   CategoryModel(id: "sports",title: "Sports",imagePath: "ball.png",color: const Color(0xffC91C22)),
   CategoryModel(id: "general",title: "General",imagePath: "Politics.png",color: const Color(0xff003E90)),
   CategoryModel(id: "health",title: "Health",imagePath: "health.png",color: const Color(0xffED1E79)),
   CategoryModel(id: "business",title: "Business",imagePath: "business.png",color: const Color(0xffCF7E48)),
   CategoryModel(id: "technology",title: "Technology",imagePath: "environment.png",color: const Color(0xff4882CF)),
   CategoryModel(id: "science",title: "Science",imagePath: "science.png",color: const Color(0xffF2D352)),


  ];

}