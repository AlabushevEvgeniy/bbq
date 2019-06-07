require 'rails_helper'

RSpec.describe EventPolicy do

  subject { EventPolicy.new(user, event) }
  let(:event) { FactoryBot.create(:event, user: FactoryBot.create(:user)) }

  context 'when user is not an owner' do
    let(:user) { FactoryBot.create(:user) }
    it { is_expected.to permit_action(:show) }
    it { is_expected.not_to permit_action(:edit) }
    it { is_expected.not_to permit_action(:update) }
    it { is_expected.not_to permit_action(:destroy) }
  end

  context 'when user is an owner' do
    let(:user) { event.user }
    it { is_expected.to permit_action(:show) }
    it { is_expected.to permit_action(:edit) }
    it { is_expected.to permit_action(:update) }
    it { is_expected.to permit_action(:destroy) }
  end

  # let(:user) {FactoryBot.create(:user)}
  # let(:owner) {FactoryBot.create(:user)}

  # subject { EventPolicy }

  # context 'when user is not an owner' do
  #   let(:event) {owner.events.build}

  #   permissions :update?, :edit?, :destroy? do
  #     it { is_expected.not_to permit(user, event) }
  #     it { is_expected.not_to permit(nil, event) }
  #   end

  #   permissions :show? do
  #     it { should permit(user, event, :show?) }
  #   end
  # end

  # context 'when user is an owner' do
  #   let(:event) {FactoryBot.create(:event, user: owner)}

  #   permissions :update?, :edit?, :destroy? do
  #     it { is_expected.to permit(owner, event) }
  #   end
  # end

  # context 'being is not an owner' do
  #   let(:user) { User.create }
  #   let(:event) { Event.create(title: 'New Year', user: owner) }

  #   it { is_expected.to permit_action(:show) }
  #   it { is_expected.to forbid_action(:destroy) }
  # end
end
