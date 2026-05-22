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
     * Holds the result of a successful parse operation.
     */
    public class ParseResult : Object {
        /** The parsed date and time. */
        public DateTime? date { get; set; }

        /** The parsed recurrence rule, if any. */
        public RecurrenceRule? recurrence { get; set; }

        /** Start index of the matched text in the original string. */
        public int start_index { get; set; }

        /** End index of the matched text in the original string. */
        public int end_index { get; set; }

        /** The substring that was matched. */
        public string matched_text { get; set; }
        
        public ParseResult () {
            start_index = -1;
            end_index = -1;
            matched_text = "";
        }
    }
}
