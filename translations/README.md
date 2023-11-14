# How to add translations
In order to add a translations please open `locales_raw/` choose the language and then open `LC_MESSAGES`.
Now open `Translations.po`.

Translation text is always structured like this:

`msgid "your-id"
msgstr "your-text"`

For msgids one can use directly the english text which makes it easier to translate in other languages or to prevent changing the id if the text changes, use a custom id which describes, what is called fo. Take the existing ids as example.

# How to call from perl?
In perl just use `__('your-id')` to get the text of the translation.

# How to apply
To apply your changes, they have to get compiled. The `pack-release.pl` compiles them to `Translation.mo`-files inside `locales` and checks before whether there are translations missing.

# Nice to know
TextDomain uses the Locale. Just using `LANGUAGE=de_DE perl tuxedo-tomte` manually overrides the locales settings.

# Advanced usage with variables and countables
Use these as examples in perl:

```perl
print translate("You have one apple.", "You have %d apples.", 0), "\n";
print translate("You have one apple.", "You have %d apples.", 1), "\n";
print translate("You have one apple.", "You have %d apples.", 2), "\n";
print translate("You have one apple."), "\n";
print translate("You have apples of brand {brand}.", ("brand" => "Evelina")), "\n";
```



And the corresponding translations inside the `.po`-file:

```po
msgid ""
msgstr ""

"Plural-Forms: nplurals=3; plural=n<1 ? 0 : (n>1 ? 2 : 1);\n"
"Content-Type: text/plain; charset=UTF-8\n"

msgid "You have one apple."
msgid_plural "You have {count} apples."
msgstr[0] "You don't have an apple."
msgstr[1] "You have one apple."
msgstr[2] "You have {count} apples."

msgid "This is an apple."
msgstr "This is an apple."

msgid "You have apples of brand {brand}."
msgstr "You have apples of brand {brand}."

msgid "You have an apple of brand {brand}."
msgid_plural "You have {count} apples of brand {brand}."
msgstr[0] "You don't have an apple of brand {brand}."
msgstr[1] "You have one apple of brand {brand}."
msgstr[2] "You have {count} apples of brand {brand}."
```
