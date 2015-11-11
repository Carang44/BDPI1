class AddUserIdToTreatments < ActiveRecord::Migration
  def change
    add_reference :treatments, :user, index: true, foreign_key: true
  end
end
