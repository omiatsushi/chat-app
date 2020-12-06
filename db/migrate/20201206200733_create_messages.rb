class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|

      t.timestamps
      t.string :content
      t.references :room, foregin_key: true
      t.references :user, foregin_key: true

    end
  end
end
