class CreateInquiries < ActiveRecord::Migration[7.1]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.text :description
      t.integer :budget
      t.integer :inquiry_type

      t.timestamps
    end

    add_index :inquiries, :inquiry_type

    reversible do |dir|
      dir.up do
        execute <<-SQL
          ALTER TABLE inquiries
          ADD CONSTRAINT check_inquiry_type
          CHECK (inquiry_type IN (0, 1))
        SQL
      end
    end
  end
end
