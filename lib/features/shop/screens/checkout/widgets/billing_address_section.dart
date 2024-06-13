import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      TSectionHeading(title: 'Shipping Address',buttonTitle: 'Change', onPressed: (){}),
      Text("John Doe",style: Theme.of(context).textTheme.bodyLarge),
      const SizedBox(height: TSizes.spaceBtwItems/2),
      Row(
        children: [
          const Icon(Icons.phone,color: Colors.grey,size:16),
          const SizedBox(width: TSizes.spaceBtwItems),
          Text('+91 9876543210',style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
      const SizedBox(height: TSizes.spaceBtwItems/2),
      Row(children: [
        const Icon(Icons.location_on,color: Colors.grey,size:16),
        const SizedBox(width: TSizes.spaceBtwItems),
        Expanded(child: Text('Lorem Ipsum ',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),),
      ],)
    ],);
  }
}