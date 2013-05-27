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
    
    container = view.frame.size
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button_size = [ 280, 50 ]
    left_margin = (container.width / 2) - (button_size[0] / 2)
    top_margin = (container.height / 2) - (button_size[1] / 2)
    set_attributes button, {
      frame: [[ left_margin, top_margin ], button_size ],
      resize: [ :bottom, :left, :right, :top ]
    }
    
    add button
  end

  def save
    close saved: true
  end
end
