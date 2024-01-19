# == Schema Information
#
# Table name: activities
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  size        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Activity < ApplicationRecord
end
