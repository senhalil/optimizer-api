# Copyright © Mapotempo, 2016
#
# This file is part of Mapotempo.
#
# Mapotempo is free software. You can redistribute it and/or
# modify since you respect the terms of the GNU Affero General
# Public License as published by the Free Software Foundation,
# either version 3 of the License, or (at your option) any later version.
#
# Mapotempo is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.  See the Licenses for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with Mapotempo. If not, see:
# <http://www.gnu.org/licenses/agpl.html>
#
require './models/base'


module Models
  class Shipment < Base
    field :priority, default: 4
    field :exclusion_cost, default: nil
    field :maximum_inroute_duration, default: nil
    validates_numericality_of :priority, allow_nil: true
    validates_numericality_of :exclusion_cost, allow_nil: true
    validates_numericality_of :maximum_inroute_duration, allow_nil: true

    field :skills, default: []

    belongs_to :pickup, class_name: 'Models::Activity'
    belongs_to :delivery, class_name: 'Models::Activity'
    has_many :sticky_vehicles, class_name: 'Models::Vehicle'
    has_many :quantities, class_name: 'Models::Quantity'
  end
end
