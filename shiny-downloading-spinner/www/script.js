$("p").on("click", (event) => {
  alert("The <p> element was clicked!");
});

$(document).on("shiny:connected", (event) => {
  alert("Connected to the server!");
});

$(document).on("shiny:disconnected", (event) => {
  alert("Disconnected from the server!");
});

Shiny.addCustomMessageHandler("starting_download", (message) => {
  let inner_html = '<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>' +
  '<span class="ps-1">Downloading...</span>';
  $("#" + message["id"]).html(inner_html);
});

Shiny.addCustomMessageHandler("end_download", function(message) {
  let inner_html = '<i class="bi bi-download pe-1"></i>' + "Download";
  $("#" + message["id"]).html(inner_html);
});
