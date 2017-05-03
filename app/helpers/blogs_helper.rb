module BlogsHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def blog_img img, type
    if type == "main" && img != nil
      img
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    else
      image_generator(height: '600', width: '400')
    end
  end
end
