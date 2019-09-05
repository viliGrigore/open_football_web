# frozen_string_literal: true

json.array! @managers, partial: 'managers/manager', as: :manager
