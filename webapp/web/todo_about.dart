//import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag('todo-about')

class TodoAbout extends PolymerElement {
	@published String description = "a simple dart todo app.";
	@published String url = "https://github.com/mswift42/darttodo";
	@published String urlname = "github.com/mswift42/darttodo";
	@published String year = "2014";
	@published String author = "martin haesler";
	TodoAbout.created() : super.created();
}