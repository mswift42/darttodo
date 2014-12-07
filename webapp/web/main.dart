// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:webapp/nav_menu.dart';
//import 'package:webapp/reverser.dart';
import 'package:route_hierarchical/client.dart';

InputElement summary = querySelector('#summary');
TextInputElement content = querySelector('#content');
InputElement scheduled = querySelector('#scheduled');
InputElement submit = querySelector('#submit');

void main() {
  initNavMenu();
//  initReverser();

  // Webapps need routing to listen for changes to the URL.
  var router = new Router();
  router.root
    ..addRoute(name: 'about', path: '/about', enter: showAbout)
    ..addRoute(name: 'home', defaultRoute: true, path: '/', enter: showHome)
    ..addRoute(name: 'newtask', path: '/newtask', enter: showNewTask);

  router.listen();
}

void showAbout(RouteEvent e) {
  // Extremely simple and non-scalable way to show different views.
  querySelector('#home').style.display = 'none';
  querySelector('#about').style.display = '';
  querySelector('#newtask').style.display = 'none';
}

void showHome(RouteEvent e) {
  querySelector('#home').style.display = '';
  querySelector('#about').style.display = 'none';
	querySelector('#newtask').style.display='none';
}

void showNewTask(RouteEvent e) {
	querySelector('#home').style.display='none';
	querySelector('#about').style.display='none';
	querySelector('#newtask').style.display='';
}