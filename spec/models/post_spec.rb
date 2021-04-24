require 'rails_helper'

RSpec.describe Post, type: :model do
  it { expect(described_class.ancestors).to include ApplicationRecord }

  it do
    post = Post.new
    post.valid?

    expect(post.errors[:title].present?).to be_truthy
  end

  it do
    post = Post.new title: 'O melhor post do mundo'
    post.valid?

    expect(post.errors[:title].present?).to be_falsey
  end

  it { expect(subject).to validate_presence_of(:content) }
end
