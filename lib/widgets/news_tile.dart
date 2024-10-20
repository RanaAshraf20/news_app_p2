import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            'https://media.istockphoto.com/id/1916729901/photo/meeting-success-two-business-persons-shaking-hands-standing-outside.jpg?s=1024x1024&w=is&k=20&c=lDdAFbi0F3tfUu5tQMgTRbgQ-wKPPoltpzmKc9rc2D4=',
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 8,),
        const Text(
          'the title should be herekn this place so drop it here please the tithe should be herekn this place so drop it here please',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const SizedBox(height: 5,),
        const Text(
          'the description should be herekn this place so drop it here please the tithe should be herekn this place so drop it here please',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
