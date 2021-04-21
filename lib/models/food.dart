part of 'models.dart';

enum FoodType { new_food, popular, recomended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  factory Food.fromJson(Map<String, dynamic> data) => Food(
      id: data['id'],
      picturePath: data['picturePath'],
      name: data['name'],
      description: data['description'],
      ingredients: data['ingredients'],
      price: data['price'],
      rate: (data['rate'] as num).toDouble(),
      types: data['types'].toString().split(',').map((e) {
        switch (e) {
          case 'recomended':
            return FoodType.recomended;
            break;
          case 'popular':
            return FoodType.popular;
            break;
          default:
            return FoodType.new_food;
        }
      }).toList());

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "http://3.bp.blogspot.com/-qW6JhFiC2ic/Uc8Xc0qEVPI/AAAAAAAAALY/f-iRzXIxieI/s209/1290072364detail_KATERING_04-09_SUP_BOLA_IKAN_APW-NO05.jpg",
      name: "Sup Bola Bola Ikan",
      description: "Disajikan panas-panas di dalam mangkok keramik kecil warisan eyang, aroma ikan tenggiri untuk bola-bola sup ini menguar bersama sedikit taburan minyak bawang putih goreng dan wangi daun bawang dan seledri cincang. Rasa bola-bola sagu ikan tenggiri yang dibuat bulatan sebesar baso, sangat gurih dan jika digigit terasa sedikit pedas merica.",
      ingredients: "Ikan, Daging Sapi, Garam, Kaldu",
      price: 15000,
      rate: 4.5,
      types: [FoodType.recomended, FoodType.popular]),
  Food(
      id: 2,
      picturePath:
          "http://2.bp.blogspot.com/-Sq1aOOUQUxY/Uc8YBMcVPDI/AAAAAAAAALg/coeyofihJok/s209/1291107171detail__SRY-SA__MMI_PIL_18802.jpg",
      name: "SATE LILIT AYAM",
      description:
          "Mulanya, resep sate lilit ini meniru sate lilit Bali, namun sudah dimodifikasi oleh ibu saya menggunakan daging ayam cincang (kalau Bali menggunakan daging ikan kalau tidak salah). Alasan mengapa hidangan ini yang dipilih, karena banyaknya cucu balita saat lebaran, sehingga dirasa nyaman jika tidak menggunakan tusuk sate.",
      ingredients: "Ayam, Cabai, Garam, Minyak",
      price: 20000,
      rate: 4.2),
  Food(
      id: 3,
      picturePath:
          "http://1.bp.blogspot.com/-VG9s5lUKktU/Uc8YN_PePCI/AAAAAAAAALo/f0Ve8BYHCU4/s209/1372413771detail_SRY-SA__MMI_264_tetelan_bumbu_petis.jpg",
      name: "TETELAN BUMBU PETIS",
      description: "Aroma masakan yang pertama tercium adalah pedas manis, disusul dengan bau udang kering dan saat digigit, gorengan tetelan daging sapid an kentang akan tercium bau daun jeruk.",
      ingredients: "Pindang, kupang atau udang",
      price: 10000,
      rate: 4.0,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath:
          "http://2.bp.blogspot.com/-ogTPZnuybic/Uc8YniZX7nI/AAAAAAAAALw/Ftisi1ydoOo/s209/1369196762detail__PRY-SA_02_es_timun_jeruk_nipis_bonus_imlek_260.jpg",
      name: "ES TIMUN JERUK NIPIS",
      description: "Disajikan dalam water goblet atau gelas berkaki, sebelumnya kami menyusun buah nata de coco, timun yang diparut halus menggunakan parutan keju, serta sesendok makan biji selasih dingin. Jika sudah akan diminum, baru dituangkan air perasan jeruk nipis yang sudah diberi larutan gula dan diberi hiasan irisan tipis jeruk serta es yang dikeprok halus.",
      ingredients: " nata de coco akan berpadu dengan rasa asam perasan jeruk nipis, sementara timun parut dan biji selasih",
      price: 8000,
      rate: 4.4,
      types: [FoodType.recomended]),
  Food(
      id: 5,
      picturePath:
          "http://2.bp.blogspot.com/-SZ30QZFPFFw/Uc8ZObc8A1I/AAAAAAAAAL4/LCrI5xcTyYU/s209/1336533561detail_abb-no05.jpg",
      name: "KUE KLAPERTART KUKUS",
      description: "Sesuai dengan namanya, kudapan yang lembut ini mengandung kelapa muda yang dikerok lebar, kismis, dan rendaman roti tawar berbau wangi esens vanilla, sementara santan kentalnya beraroma daun pandan yang manis.",
      ingredients: " adonan hunkwe atau agar-agar santan",
      price: 7000,
      rate: 4.8,
      types: [FoodType.popular]),
];
