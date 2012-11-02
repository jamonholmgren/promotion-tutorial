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
  end

  def save
    close_screen saved: true
  end
end
