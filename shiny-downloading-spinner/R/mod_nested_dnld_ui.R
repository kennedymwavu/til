mod_nested_dnld_ui <- \(id) {
  ns <- NS(id)
  
  tagList(
    mod_dnld_ui(ns("this"))
  )
}