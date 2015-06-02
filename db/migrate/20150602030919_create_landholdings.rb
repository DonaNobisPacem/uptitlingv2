class CreateLandholdings < ActiveRecord::Migration
  def change
    create_table :landholdings do |t|
      t.references :university, index: true, foreign_key: true

      t.string :classification
      t.text :description
      t.string :owner
      t.decimal :total_area_hectare, :precision => 16, :scale => 2
      t.decimal :total_area_meter, :precision => 16, :scale => 2
      t.string :acquisition
      t.string :titling_status
      t.datetime :date_issued
      t.string :tax_dec_no
      t.text :remarks
      t.text :titling_step_eins
      t.text :titling_step_zwei
      t.text :titling_step_drei
      t.text :titling_step_vier
      t.text :titling_step_funf
      t.text :titling_step_sechs
      t.text :titling_step_sieben
      t.text :titling_step_acht
      t.text :titling_step_neun
      t.text :titling_step_zehn

      t.timestamps null: false
    end
  end
end
