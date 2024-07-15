import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'u_n_u_s_e_dempty_cart_model.dart';
export 'u_n_u_s_e_dempty_cart_model.dart';

class UNUSEDemptyCartWidget extends StatefulWidget {
  const UNUSEDemptyCartWidget({super.key});

  @override
  State<UNUSEDemptyCartWidget> createState() => _UNUSEDemptyCartWidgetState();
}

class _UNUSEDemptyCartWidgetState extends State<UNUSEDemptyCartWidget> {
  late UNUSEDemptyCartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UNUSEDemptyCartModel());
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
