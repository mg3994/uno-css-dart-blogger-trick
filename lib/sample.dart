// // /// Base node in the component tree.
// // abstract interface class Component {
// //   const Component();

// //   /// Builds this component's children.
// //   Iterable<Component> build();

// //   /// Creates a transparent group of components.
// //   const factory Component.fragment([Iterable<Component> children]) = Fragment;
// // }

// // /// A component that represents an actual DOM element.
// // abstract interface class Element extends Component {
// //   const Element();

// //   String get tag;
// // }

// // /// Base class for DOM elements.
// // ///
// // /// Positional arguments are interpreted automatically:
// // ///
// // ///   Map<String, String>  -> attributes
// // ///   Iterable<Component>  -> children
// // ///
// // /// Their order does not matter.
// // ///
// // /// Example:
// // ///
// // ///   Article(
// // ///     {'class': 'post'},
// // ///     [
// // ///       Text('Hello'),
// // ///     ],
// // ///   )
// // ///
// // /// or:
// // ///
// // ///   Article(
// // ///     [
// // ///       Text('Hello'),
// // ///     ],
// // ///     {'class': 'post'},
// // ///   )
// // abstract class DomComponent extends Element {
// //   final Map<String, String> attributes;
// //   final Iterable<Component> children;

// //   DomComponent([Object? first, Object? second])
// //     : attributes = _attributes(first, second),
// //       children = _children(first, second);

// //   static Map<String, String> _attributes(Object? first, Object? second) {
// //     if (first case final Map<String, String> value) {
// //       return value;
// //     }

// //     if (second case final Map<String, String> value) {
// //       return value;
// //     }

// //     return const {};
// //   }

// //   static Iterable<Component> _children(Object? first, Object? second) {
// //     if (first case final Iterable<Component> value) {
// //       return value;
// //     }

// //     if (second case final Iterable<Component> value) {
// //       return value;
// //     }

// //     return const [];
// //   }

// //   @override
// //   Iterable<Component> build() => children;
// // }

// // /// A transparent component group.
// // ///
// // /// A Fragment does not produce a DOM node.
// // final class Fragment extends Component {
// //   final Iterable<Component> children;

// //   const Fragment([this.children = const []]);

// //   const Fragment.empty() : children = const [];

// //   @override
// //   Iterable<Component> build() => children;
// // }

// // /// Text node.
// // final class Text extends Component {
// //   final String value;

// //   const Text(this.value);

// //   @override
// //   Iterable<Component> build() => const [];
// // }

// // /// <article>
// // final class Article extends DomComponent {
// //   Article([super.first, super.second]);

// //   @override
// //   String get tag => 'article';
// // }

// // /// <div>
// // final class Div extends DomComponent {
// //   Div([super.first, super.second]);

// //   @override
// //   String get tag => 'div';
// // }

// // /// <section>
// // final class Section extends DomComponent {
// //   Section([super.first, super.second]);

// //   @override
// //   String get tag => 'section';
// // }

// // /// <span>
// // final class Span extends DomComponent {
// //   Span([super.first, super.second]);

// //   @override
// //   String get tag => 'span';
// // }

// // final a = Article([Text('A')], {'class': 'post'});
// // final b = Article({'class': 'post'}, [Text('A')]);

// /////////////////
// ///
// /// Base component.
// abstract interface class Component<C extends Component> {
//   const Component();

//   Iterable<C> build();

//   const factory Component.fragment([Iterable<C> children]) = Fragment<C>;
// }

// /// A component that produces an actual DOM element.
// abstract interface class Element<C extends Component> extends Component<C> {
//   const Element();

//   String get tag;
// }

// /// Base DOM component.
// ///
// /// The generic [C] represents the type of children this element accepts.
// abstract class DomComponent<C extends Component> extends Element<C> {
//   final Map<String, String> attributes;
//   final Iterable<C> children;

//   DomComponent([Object? first, Object? second])
//     : attributes = _attributes(first, second),
//       children = _children<C>(first, second);

//   static Map<String, String> _attributes(Object? first, Object? second) {
//     if (first case final Map<String, String> value) {
//       return value;
//     }

//     if (second case final Map<String, String> value) {
//       return value;
//     }

//     return const {};
//   }

//   static Iterable<C> _children<C extends Component>(
//     Object? first,
//     Object? second,
//   ) {
//     if (first case final Iterable<C> value) {
//       return value;
//     }

//     if (second case final Iterable<C> value) {
//       return value;
//     }

//     return const [];
//   }

//   @override
//   Iterable<C> build() => children;
// }

// /// Transparent component group.
// final class Fragment<C extends Component> extends Component<C> {
//   final Iterable<C> children;

//   const Fragment([this.children = const []]);

//   const Fragment.empty() : children = const [];

//   @override
//   Iterable<C> build() => children;
// }

// /// Text node.
// final class Text extends Component<Component> {
//   final String value;

//   const Text(this.value);

//   @override
//   Iterable<Component> build() => const [];
// }

///////////
/// A node in the component tree.
abstract interface class Component {
  const Component();

  /// Builds this component's children.
  Iterable<Component> build();

  /// Creates a transparent group without producing a DOM node.
  const factory Component.fragment([Iterable<Component> children]) = Fragment;
}

/// A component that produces an actual DOM element.
abstract interface class Element extends Component {
  const Element();

  String get tag;
}

/// Base class for all DOM elements.
///
/// Positional arguments are detected by their types:
///
/// ```text
/// Map<String, String>  -> attributes
/// Iterable<Component>  -> children
/// ```
///
/// The order does not matter:
///
/// ```dart
/// const Article(
///   {'class': 'post'},
///   [Text('Hello')],
/// );
///
/// const Article(
///   [Text('Hello')],
///   {'class': 'post'},
/// );
/// ```
abstract class DomComponent extends Element {
  final Map<String, String> attributes;
  final Iterable<Component> children;

  const DomComponent([Object? first, Object? second])
    : attributes = switch ((first, second)) {
        (Map<String, String> value, _) => value,
        (_, Map<String, String> value) => value,
        _ => const {},
      },
      children = switch ((first, second)) {
        (Iterable<Component> value, _) => value,
        (_, Iterable<Component> value) => value,
        _ => const [],
      };

  @override
  Iterable<Component> build() => children;
}

/// A transparent component group.
///
/// Fragment itself does not produce a DOM element.
final class Fragment extends Component {
  final Iterable<Component> children;

  const Fragment([this.children = const []]);

  const Fragment.empty() : children = const [];

  @override
  Iterable<Component> build() => children;
}

/// A text node.
final class Text extends Component {
  final String value;

  const Text(this.value);

  @override
  Iterable<Component> build() => const [];
}

/// `<article>`
final class Article extends DomComponent {
  const Article([super.first, super.second]);

  @override
  String get tag => 'article';
}

/// `<div>`
final class Div extends DomComponent {
  const Div([super.first, super.second]);

  @override
  String get tag => 'div';
}

/// `<section>`
final class Section extends DomComponent {
  const Section([super.first, super.second]);

  @override
  String get tag => 'section';
}

/// `<span>`
final class Span extends DomComponent {
  const Span([super.first, super.second]);

  @override
  String get tag => 'span';
}

/// `<header>`
final class Header extends DomComponent {
  const Header([super.first, super.second]);

  @override
  String get tag => 'header';
}

/// `<footer>`
final class Footer extends DomComponent {
  const Footer([super.first, super.second]);

  @override
  String get tag => 'footer';
}

/// `<main>`
final class Main extends DomComponent {
  const Main([super.first, super.second]);

  @override
  String get tag => 'main';
}

/// `<nav>`
final class Nav extends DomComponent {
  const Nav([super.first, super.second]);

  @override
  String get tag => 'nav';
}

/// `<a>`
final class Anchor extends DomComponent {
  const Anchor([super.first, super.second]);

  @override
  String get tag => 'a';
}

final ada = const Article({'class': 'post'});
final dfd = const Article([Text('Hello'), Text('World')]);
