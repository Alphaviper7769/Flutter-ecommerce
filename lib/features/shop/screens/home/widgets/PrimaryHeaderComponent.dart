import 'package:ecommerce/common/widgets/custom_shape/container/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderComponent extends StatelessWidget {
  const PrimaryHeaderComponent({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        
        child: Stack(
          children: [
            Positioned(top: -150, right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),),),
            Positioned(top: 100, right: -300, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),),),
            child,
          ],
        ),
        ),
    );
  }
}
