class AddUserIdToApointments < ActiveRecord::Migration
  def change
    add_reference :apointments, :user, index: true, foreign_key: true
  end
end
