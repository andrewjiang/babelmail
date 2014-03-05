class CreateBabels < ActiveRecord::Migration
  def change
    create_table :babels do |t|
      t.string :message

      t.timestamps
    end
  end
end
