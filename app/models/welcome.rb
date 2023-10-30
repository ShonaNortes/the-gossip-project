class Welcome < ApplicationRecord
        def change
          create_table :welcomes do |t|
            t.string :first_name
            t.timestamps
          
        end
    end
end
