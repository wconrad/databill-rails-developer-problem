class CreateBubbleGums < ActiveRecord::Migration
  def change
    create_table :bubble_gums do |t|
      t.string :name

      t.timestamps
    end
  end
end
