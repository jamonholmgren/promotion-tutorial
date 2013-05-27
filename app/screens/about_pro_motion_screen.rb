class AboutProMotionScreen < ProMotion::Screen
  title "About ProMotion"

  def will_appear
    set_nav_bar_button :right, title: "Save", action: :save 

    self.view.backgroundColor = UIColor.darkGrayColor

    add UILabel.alloc.initWithFrame(CGRectMake(25, 50, 275, 150)), {
      text: "ProMotion is a new way to easily organize and develop RubyMotion apps using the concept of screens.",
      border_style: UITextBorderStyleRoundedRect,
      background_color: UIColor.whiteColor,
      font: UIFont.systemFontOfSize(14),
      number_of_lines: 0,
      line_break_mode: UILineBreakModeWordWrap,
      layer: {
        border_width: 5,
        corner_radius: 15,
        border_color: UIColor.grayColor
      }
    }
  end

  def save
    close saved: true
  end
end
