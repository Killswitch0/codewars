# For this exercise you will be strengthening your page-fu mastery.
# You will complete the PaginationHelper class,
# which is a utility class helpful for querying paging information related to an array.
#
#   The class is designed to take in an array of values and
#   an integer indicating how many items will be allowed per each page.
#   The types of values contained within the collection/array are not relevant.
#
#     The following are some examples of how this class is used:
#
#       helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
#       helper.page_count() # should == 2
#       helper.item_count() # should == 6
#       helper.page_item_count(0) # should == 4
#       helper.page_item_count(1) # last page - should == 2
#       helper.page_item_count(2) # should == -1 since the page is invalid
#
#       # page_index takes an item index and returns the page that it belongs on
#       helper.page_index(5) # should == 1 (zero based index)
#       helper.page_index(2) # should == 0
#       helper.page_index(20) # should == -1
#       helper.page_index(-10) # should == -1 because negative indexes are invalid

# TODO: complete this class

class PaginationHelper
  attr_accessor :collection, :items_per_page

  # The constructor takes in an array of items and an integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  # Returns the number of items within the entire collection
  def item_count
    @collection.length
  end

  # Returns the number of pages
  def page_count
    (@collection.length.to_f / @items_per_page).ceil
  end

  # Returns the number of items on the current page. page_index is zero-based.
  # This method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    if page_index < 0 || page_index >= page_count
      -1
    else
      remaining_items = @collection.length - page_index * @items_per_page
      [remaining_items, @items_per_page].min
    end
  end

  # Determines what page an item is on. Zero-based indexes.
  # This method should return -1 for item_index values that are out of range
  def page_index(item_index)
    return -1 if item_index < 0 || item_index >= @collection.length

    item_index / @items_per_page
  end
end






