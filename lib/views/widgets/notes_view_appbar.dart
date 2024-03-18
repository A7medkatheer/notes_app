import 'package:flutter/material.dart';

class NotesViewAppBar extends StatelessWidget {
  
  const NotesViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            
            children: [
              const Text('Notes', style: TextStyle(fontSize: 30)),
              const Spacer(),
              Container(
                height: 50,
                width: 50,
                // color: Colors.white.withOpacity(.02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white.withOpacity(.02),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          );
  }
}