require 'rails_helper'

RSpec.describe EventPolicy do
  let(:user) {User.new}
  let(:owner) {User.new}
  let(:event) {owner.events.build}

  # объект тестирования (политика)
  subject { EventPolicy }

  permissions :create?, :new? do
    it { is_expected.to permit(owner, Event.new) }
    it { is_expected.to permit(user, Event.new) }
    it { is_expected.not_to permit(nil, Event.new) }
  end

  permissions :update?, :edit?, :destroy? do
    it { is_expected.to permit(owner, event) }
    it { is_expected.not_to permit(user, event) }
    it { is_expected.not_to permit(nil, event) }
  end

  permissions :show? do
    it { is_expected.to permit(user, event) }
    it { is_expected.to permit(nil, event) }
  end
end
