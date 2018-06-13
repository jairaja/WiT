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
    });
});
