class AboutProMotionScreen < ProMotion::Screen
  title "About ProMotion"

  def will_appear
    set_nav_bar_right_button "Save", action: :save 

    self.view.backgroundColor = UIColor.darkGrayColor

    add_element UILabel.alloc.initWithFrame(CGRectMake(25, 50, 275, 150)), {
      text: "ProMotion is a new way to easily organize and develop RubyMotion apps using the concept of screens.",
      borderStyle: UITextBorderStyleRoundedRect,
      backgroundColor: UIColor.whiteColor,
      font: UIFont.systemFontOfSize(14),
      numberOfLines: 0,
      lineBreakMode: UILineBreakModeWordWrap,
      layer: {
        borderWidth: 5,
        cornerRadius: 15,
        borderColor: UIColor.grayColor
      }
    }
    
    container = view.frame.size
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button_size = [ 280, 50 ]
    left_margin = (container.width / 2) - (button_size[0] / 2)
    top_margin = (container.height / 2) - (button_size[1] / 2)
    button.frame = [[ left_margin, top_margin ], button_size ]
    button.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin
    
    add_element button
  end

  def save
    close_screen saved: true
  end
end
