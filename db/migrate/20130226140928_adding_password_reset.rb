class AddingPasswordReset < ActiveRecord::Migration
  def change
    change_table :users do |t|
      
      # Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      # Rememberable
      t.datetime :remember_created_at

      # Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      #t.string   :unconfirmed_email # Only if using reconfirmable
    end

    add_index :users, :reset_password_token, :unique => true
    add_index :users, :confirmation_token,   :unique => true
   
  end
  
end
