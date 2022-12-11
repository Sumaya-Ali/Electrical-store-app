class Product {
  final int id,price;
  final String title,subtitle,desc,image;

  Product({
   required this.id,
   required this.title,
   required this.subtitle,
   required this.desc,
   required this.price,
   required this.image,
});
}

List<Product> products =[
  Product(
    id: 1,
    title: "كاميرا مراقبة",
    subtitle: "للبيوت والمكاتب",
    desc: "موفرة للطاقة، دورا 180 درجة، تصوير قيديو ملون مع صوت مع إمكانية ربطها على تطبيق الموبايل وإمكانية التعرف على الوجوه",
    price: 3999,
    image: "assets/Camera.png",
  ),
  Product(
    id: 2,
    title: "ماكينة إزالة الشعر للسيدات",
    subtitle: "حلاقة ناعمة وفعالة",
    desc: "موفرة للطاقة، دوران للرأس 360 درجة، ناعمة على الجلد، مناسبة للبشرة الحساسة، نتائج تدوم وتدوم",
    price: 1999,
    image: "assets/Epilator.png",
  ),
  Product(
    id: 3,
    title: "سماعات رأس",
    subtitle: "للموبايل واللابتوب",
    desc: "دقة صوت عالية مع وصلة مسجل صوت، إمكانية رفع الصوت حتى 6 درجات",
    price: 699,
    image: "assets/HeadPhone.png",
  ),
  Product(
    id: 4,
    title: "لابتوب محمول",
    subtitle: "للطلبة والأعمال المكتبية",
    desc: "ذاكرة عشوائية 16 غيغا، مع سعة تخزين 1 تيرا وإمكانية التزويد بقرص SSD ، بطارية تدوم حتى 5 ساعات",
    price: 1999,
    image: "assets/Laptop.png",
  ),
  Product(
    id: 5,
    title: "جوال",
    subtitle: "لتجربة ممتعة وفريدة",
    desc: "احصل الآن على خصم 30% لفترة محدودة عند شرائك هذا الإصدار مع سوفتوير مجاني، العرض قائم حتى نفاذ الكمية",
    price: 666,
    image: "assets/SmartPhone.png",
  ),
  Product(
    id: 6,
    title: "ساعة ذكية",
    subtitle: "ضد المياه",
    desc: "تتميز بإمكانية ربطها مع الجوال وتلقي كافة الإشعارات والرد على الهاتف، متوفرة بألوان مختلفة",
    price: 888,
    image: "assets/SmartWatch.png",
  ),
];