part of 'html.dart';

/// {@template blogger_theme.html.audio}
/// The <audio> HTML element is used to embed sound content in documents. It may contain one or more audio sources, represented using the src attribute or the <source> element: the browser will choose the most suitable one. It can also be the destination for streamed media, using a MediaStream.
/// {@endtemplate}
final class audio<A, B> extends DomComponent<A, B> {
  const audio([super.first, super.second]);

  @override
  String get tag => 'audio';
}

/// {@template blogger_theme.html.img}
/// The <img> HTML element embeds an image into the document.
/// {@endtemplate}
final class img<A, B> extends DomComponent<A, B> {
  const img([super.first, super.second]);

  @override
  String get tag => 'img';

  // An <img> is a void element in HTML and should never have children.
  @override
  Iterable<Component> build() => const [];
}

/// {@template blogger_theme.html.video}
/// The <video> HTML element embeds a media player which supports video playback into the document. You can use <video> for audio content as well, but the <audio> element may provide a more appropriate user experience.
/// {@endtemplate}
final class video<A, B> extends DomComponent<A, B> {
  const video([super.first, super.second]);

  @override
  String get tag => 'video';
}

/// {@template blogger_theme.html.embed}
/// The <embed> HTML element embeds external content at the specified point in the document. This content is provided by an external application or other source of interactive content such as a browser plug-in.
/// {@endtemplate}
final class embed<A, B> extends DomComponent<A, B> {
  const embed([super.first, super.second]);

  @override
  String get tag => 'embed';

  // An <embed> is a void element in HTML and should never have children.
  @override
  Iterable<Component> build() => const [];
}

/// {@template blogger_theme.html.iframe}
/// The <iframe> HTML element represents a nested browsing context, embedding another HTML page into the current one.
/// {@endtemplate}
final class iframe<A, B> extends DomComponent<A, B> {
  const iframe([super.first, super.second]);

  @override
  String get tag => 'iframe';
}

/// {@template blogger_theme.html.object}
/// The <object> HTML element represents an external resource, which can be treated as an image, a nested browsing context, or a resource to be handled by a plugin.
/// {@endtemplate}
final class object<A, B> extends DomComponent<A, B> {
  const object([super.first, super.second]);

  @override
  String get tag => 'object';
}

/// {@template blogger_theme.html.source}
/// The <source> HTML element specifies multiple media resources for the <picture>, the <audio> element, or the <video> element. It is an empty element, meaning that it has no content and does not have a closing tag.
/// {@endtemplate}
final class source<A, B> extends DomComponent<A, B> {
  const source([super.first, super.second]);

  @override
  String get tag => 'source';

  // A <source> is a void element in HTML and should never have children.
  @override
  Iterable<Component> build() => const [];
}

/// {@template blogger_theme.html.figure}
/// The <figure> HTML element represents self-contained content, potentially with an optional caption, which is specified using the <figcaption> element. The figure, its caption, and its contents are referenced as a single unit.
/// {@endtemplate}
final class figure<A, B> extends DomComponent<A, B> {
  const figure([super.first, super.second]);

  @override
  String get tag => 'figure';
}

/// {@template blogger_theme.html.figcaption}
/// The <figcaption> HTML element represents a caption or legend describing the rest of the contents of its parent <figure> element, providing the <figure> an accessible description.
/// {@endtemplate}
final class figcaption<A, B> extends DomComponent<A, B> {
  const figcaption([super.first, super.second]);

  @override
  String get tag => 'figcaption';
}
