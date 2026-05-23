import 'dart:io';
const version = '0.0.1';

void main(List<String> arguments) {
  if (arguments.isEmpty){
    print('Hello Dart!');
  } else if (arguments.first == 'version'){
    print('Dartpedia version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null; //.sublist(1) karena .sublist(0) adalah 'search'
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>?arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an artice title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into a single string.
    articleTitle = arguments.join(' ');
  }

  // print('Current article title: $articleTitle');
  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}