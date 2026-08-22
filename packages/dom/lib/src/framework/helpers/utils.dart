// =============================================================================
// Extensions
// =============================================================================

import "helpers.dart";
import '../framework.dart'
    show Component, DomComponent, Fragment, CustomDomComponent, Text;

/// Converts string literals into [Text] components.
extension StringAsComponent on String {
  Component get component => Text(this);
}

/// Extension on [Component] to enable direct rendering.
extension RenderComponentExtension on Component {
  /// Renders this component tree to an XML string using an optional custom [Renderer].
  String render([Renderer renderer = const Renderer(), StringBuffer? sb]) {
    sb ??= StringBuffer();
    return renderer.render(this, sb);
  }
}

/// Extension to easily create dynamic/custom [DomComponent]s using any tag name.
extension CustomDomComponentExtension on String {
  /// Creates a custom [DomComponent] using this string as the tag name.
  ///
  /// Positional arguments are detected by their types:
  /// Map<String, String>  -> attributes
  /// Iterable<Component>  -> children
  ///
  /// Example:
  /// ```dart
  /// "my-tag".tag({'class': 'demo'}, [Text('Hello')]);
  /// "my-tag".tag([Text('Hello')], {'class': 'demo'}); // Also works!
  /// ```
  DomComponent<A, B> tag<A, B>([A? first, B? second]) {
    return CustomDomComponent<A, B>(this, first, second);
  }
}

extension IterableComponentExtension on Iterable<Component> {
  /// Wraps a list of components in a Fragment.
  Fragment get fragment => Fragment(this);
}
