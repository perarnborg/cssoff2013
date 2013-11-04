module PlaceholderHelpers

  def placeholder_image(width, height, bgcolor = "f8f8f8", textcolor = "2b2b2b", text = nil)
    "http://placehold.it/#{width*2}x#{height*2}/#{bgcolor}/#{textcolor}/#{("&amp;text=" + text.gsub(" ", "%20") if text)}"
  end

  def placeholder_image_tag(width, height, alt = "", classname = nil, bgcolor = nil, textcolor = nil, text = nil, altImage = nil)
  	if(altImage)
      placeholder_image_tag_with_alt_image(width, height, alt, classname, bgcolor, textcolor, text, altImage)
    else
      image_tag placeholder_image(width, height, bgcolor, textcolor, text), width: width, height: height, alt: alt, class: classname
    end
  end

  def placeholder_image_tag_with_alt_image(width, height, alt = "", classname = nil, bgcolor = nil, textcolor = nil, text = nil, altImage = nil)
    image_tag placeholder_image(width, height, bgcolor, textcolor, text), width: width, height: height, alt: alt, class: classname, data: {image: placeholder_image(width, height, bgcolor, textcolor, text), altimage: altImage}
  end

end
