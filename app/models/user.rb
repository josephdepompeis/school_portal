class User < ActiveRecord::Base
belongs_to :user
belongs_to :parent
belongs_to :teacher
has_secure_password
validates :username, uniqueness: true
# validates :parent_id, uniqueness: true
# validates :student_id, uniqueness: true
# validates :teacher_id, uniqueness: true

end
