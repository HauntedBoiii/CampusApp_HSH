import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'empty_cart_model.dart';
export 'empty_cart_model.dart';

class EmptyCartWidget extends StatefulWidget {
  const EmptyCartWidget({super.key});

  @override
  State<EmptyCartWidget> createState() => _EmptyCartWidgetState();
}

class _EmptyCartWidgetState extends State<EmptyCartWidget> {
  late EmptyCartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyCartModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Lottie.asset(
        'assets/lottie_animations/Animation_-_1719271370103.json',
        width: 150.0,
        height: 130.0,
        fit: BoxFit.cover,
        repeat: false,
        animate: true,
      ),
    );
  }
}
