import 'package:flutter/material.dart';
import 'package:khan_hills/utils/custom_styles.dart';

class Information extends StatelessWidget {
  const Information({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * .04),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Компанийн танилцуулга",
              style: CustomStyles.textMediumSemiBold(context),
            ),
          ),
          SizedBox(height: size.height * .02),
          Text(
              "Mogul ibiz ХХК нь иргэний ба үйлдвэрийн барилга, дэд бүтцийн барилга байгууламж барих үйл ажиллагаа явуулах үндсэн зорилготойгоор 2010 онд үүсгэн байгуулагдсан. Манай компани нь байгуулагдсан цагаасаа хойш өөрсдийн хэрэгжүүлж буй орон сууцны төслүүдийнхээ барилга угсралтын ажлыг хийхийн зэрэгцээ, аж ахуй нэгж, иргэний захиалгын дагуу төрөл бүрийн иргэний ба үйлдвэрийн барилга байгуулмжийг барьж амжилттай ашиглалтанд хүлээлгэн өгсөн. Мөн барилга угсралт, зам гүүрийн байгууламж барих, засварлах зэрэг тусгай зөвшөөрлүүдийнхээ хүрээнд хөдөлмөр хамгаалал, чанарын баталгааг эрхэмлэн ажилласаар ирсэн."),
        ],
      ),
    );
  }
}
