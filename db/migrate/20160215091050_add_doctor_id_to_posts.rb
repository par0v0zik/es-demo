class AddDoctorIdToPosts < ActiveRecord::Migration
  def change
  	add_reference :posts, :doctor, index: true
  end
end
