module ImagesHelper
  def carousel_url direction
    case direction
    when "left"
      if @images.ids.include?(@image.id - 1)
        return @image.id - 1
      else
        return @images.ids.max
      end
    when "right"
      if @images.ids.include?(@image.id + 1)
        return @image.id + 1
      else
        return @images.ids.min
      end
    end
  end
end
