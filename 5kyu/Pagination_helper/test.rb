require 'rspec'

require_relative 'pagination_helper'

describe "Example" do
  it "should return the sum" do
    helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)

    expect(helper.item_count).to eq(6)
    expect(helper.page_count).to eq(2)
    expect(helper.page_item_count(0)).to eq(4)
    expect(helper.page_item_count(1)).to eq(2)
    expect(helper.page_item_count(2)).to eq(-1)
    expect(helper.page_item_count(-10)).to eq(-1)
    expect(helper.page_index(5)).to eq(1)
    expect(helper.page_index(2)).to eq(0)
    expect(helper.page_index(-10)).to eq(-1)
    expect(helper.page_index(7)).to eq(-1)
  end
end