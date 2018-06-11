define(function (require) {
    var jquery = require('jquery');
    var boot = require('bootstrap');

    jquery(document).ready(function(){
        
        jquery("#submitIdeaRoadmapFooter a").click(function(e){
            e.preventDefault();
            jquery("#roadmapTabHeader").removeClass();
            jquery("#roadmap").removeClass();
            jquery("#submitIdeaTabHeader").addClass('active');
            jquery("#submitIdea").addClass('active');
        });

        var hozTabs = document.getElementsByClassName("hozTab");
        var verTabs = document.getElementsByClassName("verTab");

        for(var i=0; i < hozTabs.length; i++){

            hozTabs[i].addEventListener("click", function() {

                for(var j=0; j < verTabs.length; j++){
                    verTabs[j].className =verTabs[j].className.replace(" active", "");
                }

                // var current = document.getElementsByClassName("active");
                // current[0].className = current[0].className.replace(" active", "");
                // this.className += " active";
            });
        }

        // jquery("#boardDirectors").html('<object data="http://sharepoint.fm.rbsgrp.net/teams/NWMI/Lists/Submit%20Your%20Idea/NewForm.aspx" style="width:800px; height:600px; display: block;"/>');
        // jquery("#ideaBucket").html('<object data="http://sharepoint.fm.rbsgrp.net/teams/NWMI/Lists/Submit%20Your%20Idea/AllItems.aspx" style="width:850px; height:600px; display: block;"/>');
    });


});