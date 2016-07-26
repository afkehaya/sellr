window.onload = function() {
  document.getElementById('pictureInput').addEventListener('change', function(event) {
    var files = event.target.files;
    var image = files[0]
    var reader = new FileReader();
    reader.onload = function(file) {
      var img = new Image();
      img.src = file.target.result;
      document.getElementById('uploaded-image').innerHTML = "<img src='" + img.src + "'>"
    }
    reader.readAsDataURL(image);
  });
};
