class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.references    :job, foreign_key: true
      t.integer       :status
      t.string        :external_reference
      t.text          :ad_description

      t.timestamps
    end
  end
end
