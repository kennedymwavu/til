server <- \(input, output, session) {
  mod_dnld_server("this", data = reactive(mtcars))
  mod_nested_dnld_server("that")
}
