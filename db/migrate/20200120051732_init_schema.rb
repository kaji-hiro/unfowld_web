class InitSchema < ActiveRecord::Migration[6.0]
  def up
    create_table 'action_text_rich_texts', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci' do |t|
      t.string 'name', null: false
      t.text 'body', size: :long
      t.string 'record_type', null: false
      t.bigint 'record_id', null: false
      t.datetime 'created_at', precision: 6, null: false
      t.datetime 'updated_at', precision: 6, null: false
      t.index %w[record_type record_id name], name: 'index_action_text_rich_texts_uniqueness', unique: true
    end
    create_table 'active_storage_attachments', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci' do |t|
      t.string 'name', null: false
      t.string 'record_type', null: false
      t.bigint 'record_id', null: false
      t.bigint 'blob_id', null: false
      t.datetime 'created_at', null: false
      t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
      t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness', unique: true
    end
    create_table 'active_storage_blobs', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci' do |t|
      t.string 'key', null: false
      t.string 'filename', null: false
      t.string 'content_type'
      t.text 'metadata'
      t.bigint 'byte_size', null: false
      t.string 'checksum', null: false
      t.datetime 'created_at', null: false
      t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
    end
    create_table 'articles', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci' do |t|
      t.string 'title'
      t.text 'content'
      t.bigint 'user_id', null: false
      t.datetime 'created_at', precision: 6, null: false
      t.datetime 'updated_at', precision: 6, null: false
      t.integer 'article_type', null: false
      t.index ['user_id'], name: 'index_articles_on_user_id'
    end
    create_table 'users', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci' do |t|
      t.string 'name'
      t.string 'email'
      t.string 'password_digest'
      t.datetime 'created_at', precision: 6, null: false
      t.datetime 'updated_at', precision: 6, null: false
      t.index ['email'], name: 'index_users_on_email'
      t.index ['name'], name: 'index_users_on_name'
    end
    add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
    add_foreign_key 'articles', 'users'
  end

  def down
    raise ActiveRecord::IrreversibleMigration, 'The initial migration is not revertable'
  end
end
