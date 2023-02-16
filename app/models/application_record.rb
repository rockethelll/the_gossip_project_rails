class ApplicationRecord < ActiveRecord::Base
  ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
  end
  primary_abstract_class
end
