// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:shopapp/gen/assets.gen.dart';
class Modelshop {
  int id;
  String name;
  String path;
  int price;
  int count ;
  Modelshop({
    this.count =1,
    required this.id,
    required this.name,
    required this.price,
    required this.path,
  });
  static List<Modelshop> mainfoods = [
    Modelshop(id: 0, name: 'پیتزا', price: 180, path:Assets.foodimage.mainfood.vecteezyDeliciousPizzaWithMozzarellaAndCherryTomatoesIsolated49087875.path ),
    Modelshop(id: 1, name: 'چیزبرگر', price: 130, path:Assets.foodimage.mainfood.vecteezyHamburgerFoodPngGenerativeAi27147309.path ),
    Modelshop(id: 2, name: 'لازانیا', price: 200, path:Assets.foodimage.mainfood.vecteezyHighQualityMouthWateringDeliciousFoodImageIsolated47820735.path ),
    Modelshop(id: 3, name: 'سه تکه فیله مرغ سوخاری', price: 120, path:Assets.foodimage.mainfood.vecteezyHotAndCrispyFriedChickenIsolatedOnTransparent24724514.path ),
    Modelshop(id: 4, name: 'شاورما مرغ و گوشت', price: 80, path:Assets.foodimage.mainfood.vecteezySpringRollWith25268556.path ),
  ];
 static List<Modelshop>appetizer = [
  Modelshop(id: 5, name: 'چیپس با سس مخصوص', price: 50, path: Assets.foodimage.appetizer.vecteezyAiGeneratedPlateOfNachosWithCheeseDipOnTransparent36884989.path),
  Modelshop(id: 6, name: 'ناگت مرغ با سس مخصوص', price: 80, path: Assets.foodimage.appetizer.vecteezyChickenNuggetsWithKetchupOnAPlateAiGenerative30724769.path),
  Modelshop(id: 7, name:'سیب زمینی' , price: 70, path: Assets.foodimage.appetizer.vecteezyFrenchFriesWith25063621.path),
  Modelshop(id: 8, name:'سالاد فصل' , price: 80, path: Assets.foodimage.appetizer.vecteezyGreenFreshSaladIsolatedIllustration23742388.path),
 ];
 static List<Modelshop>drink =[
  Modelshop(id: 9, name: 'دلستر قوطی هی دی', price:30 , path:Assets.foodimage.drink.heydayholo.path ),
  Modelshop(id: 10, name:'نوشابه سیاه' , price:20 , path:Assets.foodimage.drink.vecteezyIcedCoffeeWatercolorSet11048030.path ),
  Modelshop(id: 11, name:'اب معدنی' , price:8 , path:Assets.foodimage.drink.vecteezyMockupSplashOfWaterInGlassIsolatedOverTransparent48415417.path ),
 ];
}
