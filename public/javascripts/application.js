// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function loadnext(divout,divin){
    $("." + divout).hide();
    $("." + divin).fadeIn("fast");
}

$(document).ready(function(){

  // hide all microarray table columns initially
  reset_microarray_table();
  // show any leftover choices from a browser refresh
  show_microarray_choices();
  show_selected_pricing();
  show_totals_for_options();
  
  $(".organism_option").click(function(event){
    show_microarray_choices();
    reset_microarray_table();
  });

  $(".application_option").click(function(event){
    show_microarray_choices();
    reset_microarray_table();
  });

  $(".pricing").click(function(event){
    show_selected_pricing();
  });

  $(".labeling_option").click(function(event){
    show_totals_for_options();
  });

  $(".hybridization_option").click(function(event){
    show_totals_for_options();
  });

  $("input:checkbox").click(function(event){
    var microarray_id = this.value;
    var table_heading = $("th#microarray-"+microarray_id)
    var col = table_heading.parent().children().index(table_heading) + 1;
    $("#microarray_table").toggleColumns(col);
  });

  function show_microarray_choices(){
    // only show choices if both organism and application have been chosen
    if($('.organism_option:checked').length > 0 && $('.application_option:checked').length > 0){
      var organism_id = $('.organism_option:checked')[0].value;
      var application_id = $('.application_option:checked')[0].value;
      var microarray_selector = "#organism-" + organism_id + "_application-"+application_id;

      // deselect all selected microarrays
      $(".microarray_option").each(function(){
        this.checked = false;
      });
      // hide all microarray results
      $('.microarrays').hide();
      // then just show the selected ones
      $(microarray_selector).show();
    }
  }

  function show_selected_pricing(){
    // only show pricing if it has been chosen
    if($('.pricing:checked').length > 0){
      var pricing = $('.pricing:checked')[0].value;
      $(".internal_price").hide();
      $(".nonprofit_price").hide();
      $(".commercial_price").hide();

      $("." + pricing + "_price").show();
    }
  }

  function reset_microarray_table(){
    var columns = $("#microarray_table th").size();
    for(var i=1;i<=columns;i++){$("#microarray_table").hideColumns(i);};
  }

  function show_totals_for_options(){
    $(".total").each(function(){
      if($('.pricing:checked').length > 0){
        var pricing_name = $('.pricing:checked')[0].value + "_price";
        var microarray_id = this.attributes['microarray_id'].value
        var total = parseFloat($("td.microarray[microarray_id="+microarray_id+"]").attr(pricing_name));
        total += parseFloat($("td[microarray_id="+microarray_id+"] > .labeling_option:checked").attr(pricing_name));
        total += parseFloat($("td[microarray_id="+microarray_id+"] > .hybridization_option:checked").attr(pricing_name));

        if(isNaN(total) == false){
          $("span.total[microarray_id="+microarray_id+"]").html("$"+total);
        }
      }
    });
  }

});
