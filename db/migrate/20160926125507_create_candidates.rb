class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.float :experience
      t.float :ctc
      t.float :expected_ctc
      t.string :mobile

      t.timestamps
    end
  end
end
