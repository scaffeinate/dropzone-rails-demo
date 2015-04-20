$(document).ready(function(){
  Dropzone.options.mediaDropzone = false;
  mediaDropzone = new Dropzone('div#media-dropzone', { 
    url: "/listings/media",
    autoProcessQueue: false
  });

  mediaDropzone.on("success", function(file, responseText) {
    console.log(responseText.file_name.url);
    console.log(responseText);
  });

});