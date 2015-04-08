/**
 * Pengo Project
 *
 * Copyright (c) 2015 Penlook Development Team
 *
 * --------------------------------------------------------------------
 *
 * This program is free software: you can redistribute it and/or
 * modify it under the terms of the GNU Affero General Public License
 * as published by the Free Software Foundation, either version 3
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public
 * License along with this program.
 * If not, see <http://www.gnu.org/licenses/>.
 *
 * --------------------------------------------------------------------
 *
 * Author:
 *     Loi Nguyen       <loint@penlook.com>
 */
@Table User

import (
	"github.com/penlook/pengo/model"
	"strings"
)

type User struct {
	Model model.Table
	Id       int64
	Username string `sql:"type:varchar(100);"`
	Email    string `sql:"type:varchar(100);"`
	Password string `sql:"type:varchar(200);"`
}

// Custom model function
func (user User) FormatUserName() string {
	return strings.ToLower(user.Username)
}


