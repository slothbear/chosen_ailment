
$(document).ready(function() {
  // Turn on "chosen" %select field enhancement.
  $(".chosen-select").chosen({
    search_contains: true,
    create_option: true,
    persistent_create_option: true,
    create_option_text: 'Add',
    skip_no_results: true
    });
  $(".chosen-plain").chosen({disable_search: true});

}); // document.ready
