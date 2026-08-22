import '../framework.dart';
import 'helpers.dart';

/// Renders a [Component] tree to an XML string.
class Renderer {
  const Renderer();

  String render(Component component, [StringBuffer? sb]) {
    sb ??= StringBuffer();
    _renderComponent(component, sb);
    return sb.toString();
  }

  void _renderComponent(Component component, StringBuffer sb) {
    if (component is Text) {
      sb.write(component.escape ? escapeXml(component.value) : component.value);
    } else if (component is DomComponent) {
      sb.write('<${component.tag}');

      // Because `attributes` is now never null, we can safely check `isNotEmpty`
      if (component.attributes.isNotEmpty) {
        for (var entry in component.attributes.entries) {
          sb.write(' ${entry.key}="${escapeXml(entry.value)}"');
        }
      }

      var children = component.build();
      if (children.isEmpty) {
        sb.write('/>');
      } else {
        sb.write('>');
        for (var child in children) {
          _renderComponent(child, sb);
        }
        sb.write('</${component.tag}>');
      }
    } else {
      for (var child in component.build()) {
        _renderComponent(child, sb);
      }
    }
  }
}
