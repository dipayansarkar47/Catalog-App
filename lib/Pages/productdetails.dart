import 'package:first_app/Models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetails extends StatelessWidget {
  final Item Catalog;
  const ProductDetails({Key? key, required this.Catalog})
      : assert(Catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: context.canvasColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mH8,
          children: [
            "\$${Catalog.price}".text.bold.xl4.color(Colors.white).make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    child: "Add to Cart".text.make())
                .wh(120, 50),
          ],
        ).p24(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(Catalog.id.toString()),
              child: Image.network(Catalog.image, fit: BoxFit.cover),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.canvasColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    Catalog.name.text.xl4.bold.color(Colors.white).bold.make(),
                    Catalog.desc.text.xl.color(Colors.white).make(),
                    20.heightBox,
                    "Amet et amet aliquyam kasd et lorem sadipscing sea et erat, amet eirmod elitr nonumy labore no eos invidunt erat, justo dolor diam clita ipsum. Rebum amet accusam diam rebum stet sadipscing dolore dolor. Sit dolor sed sed stet ipsum rebum elitr tempor amet. Diam dolores gubergren sit stet, invidunt eos no tempor tempor ea, justo sed tempor sed diam kasd kasd sea amet, sed."
                        .text
                        .make()
                        .wh(context.screenWidth, 125)
                        .p16(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ).centered().pOnly(top: 40),
      ),
    );
  }
}
