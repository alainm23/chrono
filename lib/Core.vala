/*
 * Copyright © 2025 Alain M. (https://github.com/alainm23/planify)
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation; either
 * version 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA
 *
 * Authored by: Alain M. <alainmh23@gmail.com>
 */
 
namespace Chrono {
    /**
     * Entry point for natural language date and time parsing.
     *
     * {{{
     * var chrono = new Chrono.Core ();
     * var result = chrono.parse ("tomorrow at 9am");
     * if (result != null) {
     *     print (result.date.to_string ());
     * }
     * }}}
     */
    public class Core : Object {
        private Parser parser;
        private string language;

        /**
         * Creates a new Chrono instance.
         *
         * @param language BCP 47 language code. Supported: ``en``, ``es``.
         */
        public Core (string language = "en") {
            this.language = language;
            parser = new Parser ();
        }

        /**
         * Parses a natural language string and returns the first date/time found.
         *
         * @param text The input string to parse (e.g. "tomorrow", "next Monday at 3pm").
         * @param parse_recurrence Whether to also parse recurrence rules (e.g. "every week").
         * @return A {@link ParseResult} with the matched date, or ``null`` if nothing was found.
         */
        public ParseResult? parse (string text, bool parse_recurrence = false) {
            return parser.parse (text, language, parse_recurrence);
        }
    }
}
