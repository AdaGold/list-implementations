require_relative 'test_helper'

describe "List Implementation" do
  let(:list) { ArrayList.new }

  describe "initialize" do
    it "must return a List" do
      list.must_be_instance_of ArrayList
    end

    it "must return an empty List" do
      list.size.must_equal 0
    end
  end

  describe "size" do
    it "must return correct size" do
      list.size.must_equal 0

      list.add(1)

      list.size.must_equal 1

      list.delete

      list.size.must_equal 0
    end
  end

  describe "add" do
    it "must increase the size by 1" do
      start_size = list.size

      list.add(1)

      list.size.must_equal start_size + 1
    end

    it "must include the new value in the list" do
      list.include?(1).must_equal false

      list.add(1)

      list.include?(1).must_equal true
    end
  end

  describe "delete" do
    let(:list) {
      l = ArrayList.new
      l.add(1)
      l.add(2)

      l
    }

    it "must decrease the size by 1" do
      start_size = list.size

      list.delete

      list.size.must_equal start_size - 1
    end

    it "must remove the last value from the list" do
      list.include?(1).must_equal true
      list.include?(2).must_equal true

      list.delete

      list.include?(1).must_equal true
      list.include?(2).must_equal false
    end
  end

  describe "include?" do
    let(:list) {
      l = ArrayList.new
      l.add(1)

      l
    }

    it "must return true for values in the list" do
      list.include?(1).must_equal true
    end

    it "must return false for values not in the list" do
      list.include?(2).must_equal false
    end
  end

  describe "max" do
    let(:list) {
      l = ArrayList.new
      l.add(10)
      l.add(1)

      l
    }

    it "must return the maximum value in the list" do
      list.max.must_equal 10

      list.add(1)

      list.max.must_equal 10

      list.add(100)

      list.max.must_equal 100
    end
  end
end
