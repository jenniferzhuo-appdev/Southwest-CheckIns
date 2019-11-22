# == Schema Information
#
# Table name: flights
#
#  id                          :integer          not null, primary key
#  departure                   :datetime
#  description                 :string
#  fifteen_minute_message_sent :boolean          default(FALSE)
#  minute_message_sent         :boolean          default(FALSE)
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  user_id                     :integer
#

class Flight < ApplicationRecord
end
