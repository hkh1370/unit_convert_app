// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:unit_convert_app/unit.dart';

/// Converter screen where users can input amounts to convert.
///
/// Currently, it just displays a list of mock units.
///
/// While it is named ConverterRoute, a more apt name would be ConverterScreen,
/// because it is responsible for the UI at the route's destination.
class ConverterRoute extends StatelessWidget {
  /// Units for this [Category].
  final List<Unit> units;
  final ColorSwatch color;
  final String name;

  /// This [ConverterRoute] requires the color and units to not be null.
  // TODO: Pass in the [Category]'s color
  const ConverterRoute({
    Key? key,
    required this.name,
    required this.units,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    final unitWidgets = units.map((Unit unit) {
      // TODO: Set the color for this Container
      return Container(
        color: color,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name!,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
