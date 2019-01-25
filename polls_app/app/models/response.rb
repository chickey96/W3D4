# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  user_id          :integer          not null
#  answer_choice_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord
  validates :user_id, presence: true, uniqueness: true
  validates(:user_id, {presence: true, uniqueness: true})
  validates :answer_choice_id, presence: true, uniqueness: true
  validates(:answer_choice_id, {presence: true, uniqueness: true})

  belongs_to :users,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "User"

  belongs_to :answer_choices,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: "AnswerChoice"
end
