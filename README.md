# chrono

A natural language date and time parser library for Vala/GLib applications.

Originally developed as part of [Planify](https://github.com/alainm23/planify).

## Features

- Parse natural language date/time strings (e.g. "tomorrow", "next Monday", "in 3 days")
- Recurrence rule parsing (e.g. "every week", "every Monday")
- Multi-language support (English, Spanish — more via template)
- Pure Vala/GLib, no external dependencies

## Usage

```vala
var chrono = new Chrono.Core ();
var result = chrono.parse ("tomorrow at 9am");
if (result != null) {
    print ("Parsed date: %s\n", result.date.to_string ());
}
```

## Building

```bash
meson setup build
cd build
ninja
sudo ninja install
```

## Adding a new language

See `lib/Locales/TEMPLATE.md` for instructions on adding a new locale.

## License

GPL-3.0-or-later — see [LICENSE](LICENSE)
