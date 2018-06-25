$(document).ready(function(){

    function loadData(){
        // get book's id

        let googleBookUrl = 'https://www.googleapis.com/books/v1/volumes/{id}?key=yourAPIKey';
        $.getJSON(googleBookUrl, (data) =>{
            // Show the book's description
        });
    }
})