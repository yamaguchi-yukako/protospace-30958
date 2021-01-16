class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
     

      # 基本形: user_idという名前で users.id への外部キー制約をはる
      t.references :user, foreign_key: true

      t.string :title
      t.text :catch_copy
      t.text :concept
      t.timestamps
    end
  end
end
