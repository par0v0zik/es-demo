# == Schema Information
#
# Table name: doctors
#
#  id            :integer          not null, primary key
#  first_name    :string
#  last_name     :string
#  speciality_id :integer
#  posts_count   :integer          default(0)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Doctor < ActiveRecord::Base
  belongs_to :speciality, required: true
  delegate :name, to: :speciality, prefix: true
end
