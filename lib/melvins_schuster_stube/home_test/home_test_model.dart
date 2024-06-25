import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_test_widget.dart' show HomeTestWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeTestModel extends FlutterFlowModel<HomeTestWidget> {
  ///  Local state fields for this page.

  List<NotificationDataStruct> widgetShown = [];
  void addToWidgetShown(NotificationDataStruct item) => widgetShown.add(item);
  void removeFromWidgetShown(NotificationDataStruct item) =>
      widgetShown.remove(item);
  void removeAtIndexFromWidgetShown(int index) => widgetShown.removeAt(index);
  void insertAtIndexInWidgetShown(int index, NotificationDataStruct item) =>
      widgetShown.insert(index, item);
  void updateWidgetShownAtIndex(
          int index, Function(NotificationDataStruct) updateFn) =>
      widgetShown[index] = updateFn(widgetShown[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
