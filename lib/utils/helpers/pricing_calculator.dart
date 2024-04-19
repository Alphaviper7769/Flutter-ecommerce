class TPricingCalculator{

  /// -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location)
  {
    double taxRate =  getTaxRate(location);
    double shippingCost = getShippingCost(location);
    double taxAmount = productPrice * taxRate;
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calculate Tax Rate based on location
  static String calculateTax(double productPrice, String location)
  {
    double taxRate =  getTaxRate(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  ///- Calculate Shipping Cost based on location
  static String calculateShippingCost(double productPrice, String location)
  {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static double getShippingCost(String location)
  {
    return 100.0;
  }

  static double getTaxRate(String location)
  {
    return 0.18;
  }
  
}