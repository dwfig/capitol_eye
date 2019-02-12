class CreateRepresentatives < ActiveRecord::Migration[5.2]
  def change
    create_table :representatives do |t|
      t.string :pp_id
      t.string  :title
      t.string  :short_title
      t.string  :first_name
      t.string  :middle_name
      t.string  :last_name
      t.string  :suffix
      t.string  :date_of_birth
      t.string  :gender
      t.string  :party
      t.string  :leadership_role
      t.string  :twitter_account
      t.string  :facebook_account
      t.string  :youtube_account
      t.string  :url
      t.boolean :in_office
      t.string  :seniority
      t.string  :next_election
      t.string  :total_votes
      t.string  :missed_votes
      t.string  :total_present
      t.string  :office
      t.string  :phone
      t.string  :fax
      t.string  :state
      t.string  :district
      t.string  :state_rank
      t.float   :missed_votes_pct
      t.float   :votes_with_party_pct
      t.timestamps
    end
  end
end
