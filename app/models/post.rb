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

class Post < ActiveRecord::Base
  belongs_to :doctor, required: true
  
  update_index 'main#doctor', :doctor, :urgent
end
