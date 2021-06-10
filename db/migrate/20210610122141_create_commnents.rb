class CreateCommnents < ActiveRecord::Migration[6.0]
  def change
    create_table :commnents do |t|
      t.text :text

      t.timestamps
    end
  end
end
