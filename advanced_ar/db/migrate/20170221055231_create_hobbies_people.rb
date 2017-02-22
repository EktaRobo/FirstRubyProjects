class CreateHobbiesPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :hobbies_people, id:false do |t|
      t.references :person, foreign_key: true
      t.references :hobby, foreign_key: true
    end
  end
end
