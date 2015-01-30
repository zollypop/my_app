class CreateAlphas < ActiveRecord::Migration
  def change
    create_table :alphas do |t|

      t.timestamps
    end
  end
end
