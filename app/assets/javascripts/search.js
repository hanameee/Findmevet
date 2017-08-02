/* global $ */

$(document).on("turbolinks:load", function(){
  $input = $("[data-behavior='autocomplete']")
  
  var options = {
    getValue: "vtitle",
    url: function(phrase) {
      return "search.json?q=" + phrase;
    },
    
    categories: [
      {
        listLocation: "vets",
        header: "<strong>병원명</strong>"
      },
      {
        listLocation: "vets",
        header: "<strong>주소</strong>"
      }      
    ],
    
    list: {
      onChooseEvent: function () {
        var url = $input.getSelectedItemData().url
        $input.val("")
        Turbolinks.visit(url)
      }
    }
  }
  
  $input.easyAutocomplete(options)
});