function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var charityAddress = document.getElementById('charity_address');

    if (charityAddress) {
      var autocomplete = new google.maps.places.Autocomplete(charityAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(flatAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
