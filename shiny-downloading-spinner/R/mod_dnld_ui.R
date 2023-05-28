mod_dnld_ui <- \(id) {
  ns <- NS(id)

  tagList(
    downloadButton(
      outputId = ns("download"),
      icon = icon(name = NULL, class = "bi bi-download")
    )
  )
}
