module PrototypesHelper
  #タグを表示するヘルパー
  def tags(prototype)
    prototype.tags.each do |tag|
      return tag.name
    end
  end
  
end
