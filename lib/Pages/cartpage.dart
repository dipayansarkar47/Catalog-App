import 'package:first_app/Models/cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // _CartList().p32().expand(),
            Divider(),
            _CartTotal(),
          ],
        ),
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          30.widthBox,
          "\$${_cart.totalPrice}"
              .text
              .xl5
              .color(context.theme.accentColor)
              .make(),
          140.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Buying is temporarily disabled'),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  child: "Buy Now".text.make())
              .wh(120, 50),
        ],
      ),
    );
  }
}

// class _CartList extends StatefulWidget {
//   final _cart = CartModel();
//   @override
//   Widget build(BuildContext context) {
//     // bool isInCart = _cart.items.contains(widget.catalog);
//     return _cart.items.isEmpty
//         ? "No Items in the Cart".text.xl3.makeCentered()
//         : ListView.builder(
//             itemCount: _cart.items.length,
//             itemBuilder: (context, index) => ListTile(
//               leading: Icon(Icons.done),
//               trailing: IconButton(
//                 icon: Icon(Icons.remove_circle_outline),
//                 onPressed: () {
//                   _cart.remove(_cart.items[index]);
//                   // setState(() {});
//                 },
//               ),
//               title: _cart.items[index].name.text.make(),
//             ),
//           );
//   }
// }
