class ArticlesScreen < ProMotion::TableScreen
  title "Articles"
  searchable placeholder: "Search Articles"

  def table_data
    [{
      title: "Knowledge Base",
      cells: [
        { title: "How to do something", action: :open_article },
        { title: "See it in action", action: :open_article },
        { title: "Learn something new", action: :open_article },
        { title: "Do something else", action: :open_article }
      ]
    }, {
      title: "Frequently Asked Questions",
      cells: [
        { title: "Why is RubyMotion so cool?", action: :open_article },
        { title: "How come Jamon is so smart?", action: :open_article }
      ]
    }]
  end

  def open_article(args)
    p args[:cell][:title]
  end
end