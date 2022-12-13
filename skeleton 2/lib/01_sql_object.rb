require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
    # ...

  end

  def self.finalize!
  end

  def self.table_name=(table_name)
    # ...
    @@table_name = table_name
  end

  def self.table_name
    # ...
    @@table_name = self.make_method(self.to_s)
  end

  def self.make_method(word)

    indices = []
    str = word

    str.each_char.with_index {|c, i| indices << i if c == c.upcase}

    indices.delete(0) if indices.include?(0)

    indices.each do |index|
      str.insert(index, "_")
    end

    str += "s" if str[-1] != "s"

    return str.downcase

  end


  def self.all
    # ...
    
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    # ...
  end

  def initialize(params = {})
    # ...
  end

  def attributes
    # ...
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
