import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import 'package:seri_flutter_app/cart/order-confirmation.dart';
import 'package:seri_flutter_app/my-order-detail-page/screens/myOrderDetailPage.dart';
import 'package:sizer/sizer.dart';

import '../models/order.dart';
import '../models/orderItem.dart';
import '../models/orderList_array.dart';

class MyOrdersPage extends StatefulWidget {
  @override
  _MyOrdersPageState createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithText(context, 'Orders'),
      body: Container(
        color: Color.fromARGB(255, 249, 249, 249),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: getOrders(context),
          ),
        ),
      ),
    );
  }
}

List<Widget> getOrders(BuildContext context) {
  List<Widget> orders = [];
  for (Order order in orderList) {
    orders.add(getOrder(order, context));
  }
  return orders;
}

Widget getOrder(Order order, BuildContext context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order ID : ${order.orderID}',
            style: TextStyle(
              fontFamily: 'GothamMedium',
              fontSize: 12.sp,
              color: Color.fromARGB(255, 71, 54, 111),
            ),
          ),
          SizedBox(height: 1.h),
          Column(
            children: getOrderItems(order, context),
          ),
        ],
      ),
    ),
  );
}

List<Widget> getOrderItems(Order order, BuildContext context) {
  List<Widget> _orderItems = [];
  for (OrderItem _orderItem in order.orderItems) {
    _orderItems.add(getOrderItem(_orderItem, context));
  }
  return _orderItems;
}

Widget getOrderItem(OrderItem _orderItem, BuildContext context) {
  final String _orderStatus = getOrderStatus(_orderItem.orderStatus);
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12),
          ),
          height: 15.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 10.w),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: _orderItem.orderImage)),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _orderStatus,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        fontFamily: 'GothamMedium',
                        color: Color.fromARGB(255, 71, 54, 111),
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      getOrderStatusDate(_orderItem),
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontFamily: 'GothamMedium',
                        color: Color.fromARGB(255, 71, 54, 111),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderConfirmation()));
                },
                child: Container(
                  constraints: BoxConstraints(maxWidth: 8.w),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/assets/icons/rightarrow.png')),
                  ),
                ),
              ),
            ],
          ),
        ),
        _orderItem.orderStatus == 'rc'
            ? GestureDetector(
                onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => MyOrdersDetailPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 237, 249),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Total Refund Amount',
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.sp,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                              Text(
                                'Refund has been initiated on ${DateFormat.yMMMMd().format(_orderItem.refundDate)}',
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: 9.sp,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Rs. ${_orderItem.refundAmount}',
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    ),
  );
}

String getOrderStatus(String _orderStatus) {
  if (_orderStatus == 'd') {
    return 'Delivered';
  } else if (_orderStatus == 'rc') {
    return 'Return Complete';
  } else if (_orderStatus == 'rrc') {
    return 'Return and Refund Complete';
  } else
    return '';
}

String getOrderStatusDate(OrderItem _orderItem) {
  var formattedDate = DateFormat.yMMMMd().format(_orderItem.date);
  if (_orderItem.orderStatus == 'd') {
    return 'Delivered on $formattedDate';
  } else if (_orderItem.orderStatus == 'rc') {
    return 'Returned on $formattedDate';
  } else if (_orderItem.orderStatus == 'rrc') {
    var formattedRefundDate = DateFormat.yMMMMd().format(_orderItem.refundDate);
    return 'Returned on $formattedDate \nRefund successful on $formattedRefundDate';
  } else
    return '';
}
