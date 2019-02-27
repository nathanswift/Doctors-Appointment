class RemoveDateAndTimeFromAppointments < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :date, :string
    remove_column :appointments, :time, :string
  end
end
