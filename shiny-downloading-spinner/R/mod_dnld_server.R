mod_dnld_server <- \(id, data) {
  stopifnot("Argument 'data' must be a reactive!" = is.reactive(data))
  moduleServer(
    id = id,
    module = \(input, output, session) {
      ns <- session$ns

      output$download <- downloadHandler(
        filename = \() {
          paste("data-", Sys.Date(), ".csv", sep = "")
        },
        content = \(file) {
          session$sendCustomMessage(
            type = "starting_download",
            list(id = ns("download"))
          )
          write.csv(data(), file)
          session$sendCustomMessage(
            type = "end_download",
            list(id = ns("download"))
          )
        }
      )
    }
  )
}
