part of 'models.dart';

enum TransactionStatus { delivered, on_delivery, pending, cancelled }

class Transaction extends Equatable {
  final int id;
  final Food food;
  final int quantity;
  final int total;
  final DateTime dateTime;
  final TransactionStatus status;
  final User user;
  final String paymentUrl;

  Transaction(
      {this.id,
      this.food,
      this.quantity,
      this.total,
      this.dateTime,
      this.status,
      this.user,
      this.paymentUrl});

  Transaction copyWith(
      {int id,
      Food food,
      int quantity,
      int total,
      DateTime dateTime,
      TransactionStatus status,
      User user}) {
    return Transaction(
        id: id ?? this.id,
        food: food ?? this.food,
        quantity: quantity ?? this.quantity,
        total: total ?? this.total,
        dateTime: dateTime ?? this.dateTime,
        status: status ?? this.status,
        user: user ?? this.user);
  }

  factory Transaction.fromJson(Map<String, dynamic> data) => Transaction(
      id: data['id'],
      food: Food.fromJson(data['food']),
      quantity: data['quantity'],
      total: data['total'],
      dateTime: DateTime.fromMillisecondsSinceEpoch(data['dateTime']),
      status: (data['status'] == 'PENDING')
          ? TransactionStatus.pending
          : (data['status'] == 'DELIVERED')
              ? TransactionStatus.delivered
              : (data['status'] == 'CANCELLED')
                  ? TransactionStatus.cancelled
                  : TransactionStatus.on_delivery,
      paymentUrl: data['payment_url']);

  @override
  List<Object> get props => throw UnimplementedError();
}
