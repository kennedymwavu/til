mod_nested_dnld_server <- \(id) {
  moduleServer(
    id = id,
    module = \(input, output, session) {
      given_data <- reactive({
        lapply(seq_len(2000), \(x) {
          iris
        }) |>
          do.call(what = rbind)
      })
      mod_dnld_server("this", given_data)
    }
  )
}
