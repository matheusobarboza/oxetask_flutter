import 'package:flutter/material.dart';

class CardTodoListWidget extends StatelessWidget {
  const CardTodoListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Aprendendo Flutter'),
                      subtitle:
                          Text('Aprendendo providers com flutter'),
                      trailing: Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                          activeColor: Colors.blue[800],
                          shape: const CircleBorder(),
                          value: true,
                          onChanged: (value) => print(value),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}