import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile(
      {Key? key, required this.title, this.icon, required this.color})
      : super(key: key);
  final String title;
  final IconData? icon;
  final Color color;
  _HeightItems heightItems = _HeightItems();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ProjectContainerDecoration(const Color(0xFF333333), 15),
      child: ListTile(
        leading: _iconWithContainer(),
        title: _titleWidget(context),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
      ),
    );
  }

  Container _iconWithContainer() {
    return Container(
      height: 33,
      width: 33,
      decoration: ProjectContainerDecoration(color, heightItems.smallHeight),
      child: Icon(icon, color: Colors.white, size: heightItems.mediumHeight),
    );
  }

  Text _titleWidget(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: Colors.white),
    );
  }
}

class ProjectContainerDecoration extends BoxDecoration {
  final Color color;
  final double radius;
  ProjectContainerDecoration(this.color, this.radius)
      : super(
          borderRadius: BorderRadius.circular(radius),
          color: color,
        );
}

class _HeightItems {
  final double smallHeight = 10;
  final double mediumHeight = 20;
}
