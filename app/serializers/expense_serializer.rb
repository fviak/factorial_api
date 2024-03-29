# frozen_string_literal: true

# == Schema Information
#
# Table name: expenses
#
#  id             :bigint           not null, primary key
#  concept        :string(255)      not null
#  subtotal_cents :decimal(10, )    not null
#  total_cents    :decimal(10, )    not null
#  currency       :string(255)      not null
#  processor      :string(255)      not null
#  processor_info :json
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :concept, :total, :subtotal, :currency, :processor,
             :timestamp, :year, :month, :day

  def total
    object.total_cents.to_f / 100
  end

  def subtotal
    object.subtotal_cents.to_f / 100
  end

  def year
    object.created_at.year
  end

  def month
    object.created_at.month
  end

  def day
    object.created_at.day
  end

  def timestamp
    object.created_at.to_i
  end
end
