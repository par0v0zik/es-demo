# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  published  :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  doctor_id  :integer
#
# Indexes
#
#  index_posts_on_doctor_id  (doctor_id)
#

class Post < ActiveRecord::Base
  belongs_to :doctor, required: true
end
