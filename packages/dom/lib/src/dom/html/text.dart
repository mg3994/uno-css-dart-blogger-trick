part of 'html.dart';

/// {@template blogger_theme.html.a}
/// The &lt;a&gt; HTML element (or anchor element), with its href attribute, creates a hyperlink to web pages, files, email addresses, locations in the same page, or anything else a URL can address.
/// {@endtemplate}
final class a<A, B> extends DomComponent<A, B> {
  const a([super.first, super.second]);

  @override
  String get tag => 'a';
}

/// {@template blogger_theme.html.b}
/// The &lt;b&gt; HTML element is used to draw the reader's attention to the element's contents, which are not otherwise granted special importance.
/// {@endtemplate}
final class b<A, B> extends DomComponent<A, B> {
  const b([super.first, super.second]);

  @override
  String get tag => 'b';
}

/// {@template blogger_theme.html.br}
/// The &lt;br&gt; HTML element produces a line break in text (carriage-return).
/// {@endtemplate}
final class br<A, B> extends DomComponent<A, B> {
  const br([super.first, super.second]);

  @override
  String get tag => 'br';

  // A <br> is a void element in HTML and should never have children.
  @override
  Iterable<Component> build() => const [];
}

/// {@template blogger_theme.html.code}
/// The &lt;code&gt; HTML element displays its contents styled in a fashion intended to indicate that the text is a short fragment of computer code.
/// {@endtemplate}
final class code<A, B> extends DomComponent<A, B> {
  const code([super.first, super.second]);

  @override
  String get tag => 'code';
}

/// {@template blogger_theme.html.em}
/// The &lt;em&gt; HTML element marks text that has stress emphasis.
/// {@endtemplate}
final class em<A, B> extends DomComponent<A, B> {
  const em([super.first, super.second]);

  @override
  String get tag => 'em';
}

/// {@template blogger_theme.html.i}
/// The &lt;i&gt; HTML element represents a range of text that is set off from the normal text for some reason, such as idiomatic text or technical terms.
/// {@endtemplate}
final class i<A, B> extends DomComponent<A, B> {
  const i([super.first, super.second]);

  @override
  String get tag => 'i';
}

/// {@template blogger_theme.html.s}
/// The &lt;s&gt; HTML element renders text with a strikethrough, or a line through it.
/// {@endtemplate}
final class s<A, B> extends DomComponent<A, B> {
  const s([super.first, super.second]);

  @override
  String get tag => 's';
}

/// {@template blogger_theme.html.small}
/// The &lt;small&gt; HTML element represents side-comments and small print, like copyright and legal text.
/// {@endtemplate}
final class small<A, B> extends DomComponent<A, B> {
  const small([super.first, super.second]);

  @override
  String get tag => 'small';
}

/// {@template_blogger_theme.html.span}
/// The &lt;span&gt; HTML element is a generic inline container for phrasing content, which does not inherently represent anything.
/// {@endtemplate}
final class span<A, B> extends DomComponent<A, B> {
  const span([super.first, super.second]);

  @override
  String get tag => 'span';
}

/// {@template blogger_theme.html.strong}
/// The &lt;strong&gt; HTML element indicates that its contents have strong importance, seriousness, or urgency.
/// {@endtemplate}
final class strong<A, B> extends DomComponent<A, B> {
  const strong([super.first, super.second]);

  @override
  String get tag => 'strong';
}

/// {@template blogger_theme.html.u}
/// The &lt;u&gt; HTML element represents a span of inline text which should be rendered in a way that indicates that it has a non-textual annotation.
/// {@endtemplate}
final class u<A, B> extends DomComponent<A, B> {
  const u([super.first, super.second]);

  @override
  String get tag => 'u';
}

/// {@template blogger_theme.html.wbr}
/// The &lt;wbr&gt; HTML element represents a word break opportunity—a position within text where the browser may optionally break a line.
/// {@endtemplate}
final class wbr<A, B> extends DomComponent<A, B> {
  const wbr([super.first, super.second]);

  @override
  String get tag => 'wbr';

  // A <wbr> is a void element in HTML and should never have children.
  @override
  Iterable<Component> build() => const [];
}