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

  context 'when user is website visitor' do
    let(:user) { nil }
    it { is_expected.to permit_action(:show) }
    it { is_expected.not_to permit_action(:edit) }
    it { is_expected.not_to permit_action(:update) }
    it { is_expected.not_to permit_action(:destroy) }
  end

  context 'when user is an owner' do
    let(:user) { FactoryBot.create(:user) }
    let(:event) { FactoryBot.create(:event, user: user) }
    it { is_expected.to permit_action(:show) }
    it { is_expected.to permit_action(:edit) }
    it { is_expected.to permit_action(:update) }
    it { is_expected.to permit_action(:destroy) }
  end
end
