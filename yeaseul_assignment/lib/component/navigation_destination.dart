import "package:flutter/material.dart";

NavigationRailDestination createDestination(
    IconData iconData, String label, double padding) {
  return NavigationRailDestination(
    selectedIcon: Padding(
      padding: EdgeInsets.all(padding),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    ),
    icon: Icon(
      iconData,
      color: Colors.black,
    ),
    label: Text(
      label,
      style: TextStyle(color: Colors.black // 텍스트 색상을 검은색으로 설정
          ),
    ),
  );
}
