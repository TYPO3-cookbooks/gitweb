#
# Cookbook Name:: gitweb
# Recipe:: default
#
# Copyright 2012, Steffen Gebert / TYPO3 Association
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

package "gitweb"

web_app node['gitweb']['hostname'] do
  server_name node['gitweb']['hostname']
  server_aliases []
  docroot "/usr/share/gitweb"
end

template "/etc/gitweb.conf" do
  source "gitweb.conf"
  mode 0644
end

if node['gitweb']['ssl']
  include_recipe "apache2::mod_ssl"
end