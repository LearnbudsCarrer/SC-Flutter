import 'package:flutter/material.dart';
import 'package:service_provider/common/app_colors.dart';

class FinancialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profile.jpeg'), 
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lasso Kayne',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Welcome Back!',
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]))
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IncomeExpenditureCard(
                  title: 'Income',
                  amount: '\$21,000',
                  color: Colors.blue,
                  icon: Icons.arrow_upward,
                  backgroundColor: Colors.blue[50]!,
                ),
                SizedBox(width: 10),
                IncomeExpenditureCard(
                  title: 'Expenditure',
                  amount: '\$11,000',
                  color: Colors.red,
                  icon: Icons.arrow_downward,
                  backgroundColor: Colors.red[50]!,
                ),
              ],
            ),
            SizedBox(height: 20),
       Container(
  height: 150,
  width: 350,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: AppColors().appGreyColor,
    boxShadow: [
      BoxShadow(
        color: Colors.pink.withOpacity(0.5), 
        spreadRadius: 2, 
        blurRadius: 5, 
        offset: Offset(0, 3), 
      ),
    ],
  ),


              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lasso Kayne',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text('4551 5667 8886 7775',
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                    SizedBox(height: 8),
                    Text('Account Balance',
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                    Text('\$121,000',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Transactions',
                style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  TransactionTile(
                      title: 'Sri Rajan',
                      date: '22 September 2021',
                      amount: '\$22'),
                  TransactionTile(
                      title: 'Sofiya',
                      date: '14 September 2021',
                      amount: '\$120'),
                  TransactionTile(
                      title: 'Sri Rajan',
                      date: '22 September 2021',
                      amount: '\$22'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IncomeExpenditureCard extends StatelessWidget {
  final String title;
  final String amount;
  final Color color;
  final IconData icon;
  final Color backgroundColor;

  const IncomeExpenditureCard({
    required this.title,
    required this.amount,
    required this.color,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle
                ),
                child: Icon(icon, color: color),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600])),
                  SizedBox(height: 8),
                  Text(amount,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: color)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  final String title;
  final String date;
  final String amount;

  const TransactionTile({
    required this.title,
    required this.date,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.account_circle, color: Colors.white),
          backgroundColor: Colors.blue,
        ),
        title: Text(title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold)),
        subtitle: Text(date,
            style: TextStyle(fontSize: 14, color: Colors.grey[600])),
        trailing: Text(amount,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
    );
  }
}
