part of 'html.dart';

/// {@template blogger_theme.html.button}
/// The <button> HTML element is an interactive element activated by a user with a mouse, keyboard, finger, voice command, or other assistive technology. Once activated, it performs an action, such as submitting a form or opening a dialog.
/// {@endtemplate}
final class button<A, B> extends DomComponent<A, B> {
  const button([super.first, super.second]);

  @override
  String get tag => 'button';
}

/// {@template blogger_theme.html.datalist}
/// The <datalist> HTML element contains a set of <option> elements that represent the permissible or recommended options available to choose from within other controls.
/// {@endtemplate}
final class datalist<A, B> extends DomComponent<A, B> {
  const datalist([super.first, super.second]);

  @override
  String get tag => 'datalist';
}

/// {@template blogger_theme.html.fieldset}
/// The <fieldset> HTML element is used to group several controls, as well as labels (<label>), within a web form.
/// {@endtemplate}
final class fieldset<A, B> extends DomComponent<A, B> {
  const fieldset([super.first, super.second]);

  @override
  String get tag => 'fieldset';
}

/// {@template blogger_theme.html.form}
/// The <form> HTML element represents a document section containing interactive controls for submitting information.
/// {@endtemplate}
final class form<A, B> extends DomComponent<A, B> {
  const form([super.first, super.second]);

  @override
  String get tag => 'form';
}

/// {@template blogger_theme.html.input}
/// The <input> HTML element is used to create interactive controls for web-based forms in order to accept data from the user; a wide variety of types of input data and control widgets are available, depending on the device and user agent.
/// {@endtemplate}
final class input<A, B> extends DomComponent<A, B> {
  const input([super.first, super.second]);

  @override
  String get tag => 'input';

  // An <input> is a void element in HTML and should never have children.
  @override
  Iterable<Component> build() => const [];
}

/// {@template blogger_theme.html.label}
/// The <label> HTML element represents a caption for an item in a user interface.
/// {@endtemplate}
final class label<A, B> extends DomComponent<A, B> {
  const label([super.first, super.second]);

  @override
  String get tag => 'label';
}

/// {@template blogger_theme.html.legend}
/// The <legend> HTML element represents a caption for the content of its parent <fieldset>.
/// {@endtemplate}
final class legend<A, B> extends DomComponent<A, B> {
  const legend([super.first, super.second]);

  @override
  String get tag => 'legend';
}

/// {@template blogger_theme.html.meter}
/// The <meter> HTML element represents either a scalar value within a known range or a fractional value.
/// {@endtemplate}
final class meter<A, B> extends DomComponent<A, B> {
  const meter([super.first, super.second]);

  @override
  String get tag => 'meter';
}

/// {@template blogger_theme.html.optgroup}
/// The <optgroup> HTML element creates a grouping of options within a <select> element.
/// {@endtemplate}
final class optgroup<A, B> extends DomComponent<A, B> {
  const optgroup([super.first, super.second]);

  @override
  String get tag => 'optgroup';
}

/// {@template blogger_theme.html.option}
/// The <option> HTML element is used to define an item contained in a <select>, an <optgroup>, or a <datalist> element.
/// {@endtemplate}
final class option<A, B> extends DomComponent<A, B> {
  const option([super.first, super.second]);

  @override
  String get tag => 'option';
}

/// {@template blogger_theme.html.output}
/// The <output> HTML element is a container element into which a site or app can inject the results of a calculation or the outcome of a user action.
/// {@endtemplate}
final class output<A, B> extends DomComponent<A, B> {
  const output([super.first, super.second]);

  @override
  String get tag => 'output';
}

/// {@template blogger_theme.html.progress}
/// The <progress> HTML element displays an indicator showing the completion progress of a task, typically displayed as a progress bar.
/// {@endtemplate}
final class progress<A, B> extends DomComponent<A, B> {
  const progress([super.first, super.second]);

  @override
  String get tag => 'progress';
}

/// {@template blogger_theme.html.select}
/// The <select> HTML element represents a control that provides a menu of options.
/// {@endtemplate}
final class select<A, B> extends DomComponent<A, B> {
  const select([super.first, super.second]);

  @override
  String get tag => 'select';
}

/// {@template blogger_theme.html.textarea}
/// The <textarea> HTML element represents a multi-line plain-text editing control, useful when the user wants to enter a sizable amount of free-form text, for example a comment on a review or feedback form.
/// {@endtemplate}
final class textarea<A, B> extends DomComponent<A, B> {
  const textarea([super.first, super.second]);

  @override
  String get tag => 'textarea';
}
