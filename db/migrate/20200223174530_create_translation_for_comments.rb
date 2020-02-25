class CreateTranslationForComments < ActiveRecord::Migration[6.0]
  def up
    Comment.create_translation_table!({content_body: :text}, { migrate_data: true })
  end

  def down
    Comment.drop_translation_table! migrate_data: true
  end
end
