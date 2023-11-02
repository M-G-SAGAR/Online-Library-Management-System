/*!
    * Start Bootstrap - SB Admin v7.0.5 (https://startbootstrap.com/template/sb-admin)
    * Copyright 2013-2022 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
    */
    // 
// Scripts
// 

window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
        //     document.body.classList.toggle('sb-sidenav-toggled');
        // }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

});

const search=() => {
	
	console.log("searching.........")

    let query = $("#search-input").val();

    if(query == ""){
        $(".search-result").hide();
    }else{

        let url = `http://localhost:8081/search/${query}`;

        fetch(url).then((response) => {
            return response.json();
        }).then((data) =>{
			
			console.log(data);
			
            let text = `<div class='list-group'>`

            data.forEach(book => {
                text+=`<a href='/books/${book.id}/show' class='list-group-item list-group-item-action'>${book.name}</a>`
            });

            text+=`</div>`;

			
            $(".search-result").html(text);
            console.log(query)
            $(".search-result").show();
        });
        //$(".search-result").show();
    }
};
