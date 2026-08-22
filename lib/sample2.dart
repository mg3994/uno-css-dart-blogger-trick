import 'package:collection/collection.dart';

abstract interface class Component {
  const Component();

  Iterable<Component> build();

  const factory Component.fragment([Iterable<Component> children]) = Fragment;
}

abstract interface class Element extends Component {
  const Element();

  String get tag;
}

/// Base class for all DOM elements.
///
/// Uses Generics <A, B> to allow `const` construction without compile-time
/// type constraints. The actual type resolution is deferred to the getters
/// using Record pattern matching.
abstract class DomComponent<A, B> implements Element {
  final A? _first;
  final B? _second;

  const DomComponent([this._first, this._second]);

  /// Groups the generic inputs into a Record and extracts the Map if it exists.
  Map<String, String> get attributes => switch ((_first, _second)) {
    (Map<String, String> attrs, _) => attrs,
    (_, Map<String, String> attrs) => attrs,
    _ => const {},
  };

  /// Groups the generic inputs into a Record and extracts the Iterable if it exists.
  Iterable<Component> get children => switch ((_first, _second)) {
    (Iterable<Component> kids, _) => kids,
    (_, Iterable<Component> kids) => kids,
    _ => const [],
  };

  @override
  Iterable<Component> build() => children;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final mapEquals = const MapEquality().equals;
    final iterableEquals = const IterableEquality().equals;

    return other is DomComponent &&
        other.tag == tag &&
        mapEquals(other.attributes, attributes) &&
        iterableEquals(other.children, children);
  }

  @override
  int get hashCode => Object.hash(
    tag,
    const MapEquality().hash(attributes),
    const IterableEquality().hash(children),
  );
}

final class Fragment implements Component {
  final Iterable<Component> children;

  const Fragment([this.children = const []]);
  const Fragment.empty() : children = const [];

  @override
  Iterable<Component> build() => children;
}

/// `<article>`
final class Article<A, B> extends DomComponent<A, B> {
  const Article([super.first, super.second]);

  @override
  String get tag => 'article';
}

/// `<div>`
final class Div<A, B> extends DomComponent<A, B> {
  const Div([super.first, super.second]);

  @override
  String get tag => 'div';
}

/// `<span>`
final class Span<A, B> extends DomComponent<A, B> {
  const Span([super.first, super.second]);

  @override
  String get tag => 'span';
}

// --- Dummy implementations of Text and Renderer for the demo ---
class Text implements Component {
  final String value;
  const Text(this.value);

  @override
  Iterable<Component> build() => const [];
}

String render(Component component) {
  if (component is Text) return component.value;
  if (component is DomComponent) {
    final attrs = component.attributes.entries
        .map((e) => ' ${e.key}="${e.value}"')
        .join('');
    final children = component.children.map((c) => render(c)).join('');

    return children.isEmpty
        ? '<${component.tag}$attrs/>'
        : '<${component.tag}$attrs>$children</${component.tag}>';
  }
  return '';
}

// --- The Main Function ---
void main() {
  // 1. Attributes first, then Children
  const article1 = Article(
    {'class': 'post', 'id': 'post-1'},
    [Text('Hello from Article 1')],
  );

  // 2. Children first, then Attributes (Order swapped, still perfectly valid and const!)
  const article2 = Article(
    [Text('Hello from Article 2')],
    {'class': 'post', 'id': 'post-2'},
  );

  // 3. Only Children (Second argument omitted)
  const span = Span([Text('I am just a span')]);

  // 4. Only Attributes (Second argument omitted)
  const div = Div({'class': 'empty-divider'});

  // --- Print the Results ---
  print('1. Attributes First:');
  print(render(article1));
  print('');

  print('2. Children First:');
  print(render(article2));
  print('');

  print('3. Only Children:');
  print(render(span));
  print('');

  print('4. Only Attributes:');
  print(render(div));

  // Component A: Attributes first, then Children
  const componentA = Article(
    {'class': 'card', 'id': 'item-1'},
    [
      Div([Text('Hello World')]),
    ],
  );

  // Component B: Children first, then Attributes
  const componentB = Article(
    [
      Div([Text('Hello World')]),
    ],
    {'class': 'card', 'id': 'item-1'},
  );

  // Component C: Different attributes (to prove it doesn't just return true blindly)
  const componentC = Article(
    {'class': 'card', 'id': 'item-2'}, // different id
    [
      Div([Text('Hello World')]),
    ],
  );

  print('--- Equality Tests ---');

  // Test 1: Are A and B equal?
  print('componentA == componentB : ${componentA == componentB}');

  // Test 2: Are A and C equal?
  print('componentA == componentC : ${componentA == componentC}');

  // Test 3: Do A and B produce the exact same hash code?
  // (Crucial for putting these in Sets or using them as Map keys)
  print(
    'componentA.hashCode == componentB.hashCode : ${componentA.hashCode == componentB.hashCode}',
  );
}
