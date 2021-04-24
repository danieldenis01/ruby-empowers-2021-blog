require 'rails_helper'

RSpec.describe Post, type: :model do
  it { expect(described_class.ancestors).to include ApplicationRecord }

  it do
    post = Post.new
    post.valid?

    expect(post.errors[:title].present?).to be_truthy
  end

  context 'when is filled' do
    let(:post) { create(:post) } # só quando é usado
    # let!(:post) { build(:post) } # criado/instanciado a cada it, mesmo não sendo chamado

    it do
      post.valid?

      expect(post.errors[:title].present?).to be_falsey
    end

    it { expect(post.slug).not_to be_nil }
  end

  it { expect(subject).to validate_presence_of(:content) }
end
