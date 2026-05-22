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
    /** Frequency of a recurrence rule. */
    public enum RecurrenceType {
        DAILY,
        WEEKLY,
        MONTHLY,
        YEARLY
    }

    /**
     * Describes a repeating schedule parsed from natural language.
     *
     * For example, "every Monday" produces a WEEKLY rule with ``days_of_week`` set to ``[1]``.
     */
    public class RecurrenceRule : Object {
        /** How often the event repeats. */
        public RecurrenceType recurrence_type { get; set; }

        /** Interval between occurrences (default: 1). */
        public int interval { get; set; default = 1; }

        /** Days of the week (0=Sunday … 6=Saturday), if applicable. */
        public Gee.ArrayList<int>? days_of_week { get; set; }

        /** Day of the month, if applicable. -1 means not set. */
        public int day_of_month { get; set; default = -1; }

        /** Month of the year (1–12), if applicable. -1 means not set. */
        public int month_of_year { get; set; default = -1; }

        /** Hour of the day, if applicable. -1 means not set. */
        public int hour { get; set; default = -1; }

        /** Whether the rule refers to the last day of the month. */
        public bool last_day { get; set; default = false; }

        /**
         * Creates a new RecurrenceRule.
         *
         * @param recurrence_type The frequency type.
         */
        public RecurrenceRule (RecurrenceType recurrence_type) {
            this.recurrence_type = recurrence_type;
        }
    }
}
