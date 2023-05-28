ui <- bslib::page(
  title = "DownLoading spinner",
  theme = bslib::bs_theme(version = 5),
  lang = "en",
  tags$head(
    tags$link(
      rel = "stylesheet",
      href = "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"
    )
  ),
  tags$body(
    class = "d-flex flex-column align-items-center bg-dark",
    tags$div(
      tags$h1("H3110 W0r1d!"),
      tags$div(
        class = "my-5",
        tags$p("When the file is small:"),
        mod_dnld_ui("this")
      ),
      tags$div(
        class = "my-5",
        tags$p("When the file is large:"),
        mod_nested_dnld_ui("that")
      ),
      tags$div(
        class = "my-5",
        tags$p("Features:"),
        tags$ul(
          tags$li(
            "Works even when the download module is nested in other modules"
          )
        )
      ),
      tags$script(src = "script.js")
    )
  )
)
