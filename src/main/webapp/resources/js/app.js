/**
 * 
 */


function deleteBook (id ){
  console.log(id);
  fetch("http://localhost:8080/book/deleteBook/"+id, {
        method: 'DELETE' // or 'PUT
      }).then(res => res.json())
      .catch(error => console.error('Error:', error))
      .then(response =>location.reload());
}


function update(id){

  const formData = new FormData(document.querySelector('form'))
  for (var pair of formData.entries()) {
     console.log(pair[0] + ': ' + pair[1]);
  }
    
    fetch("http://localhost:8080/book/updateBook/"+id, {
        method: 'PUT', // or 'PUT'
        body: JSON.stringify(formData), // data can be `string` or {object}!
        headers:{
          'Content-Type': 'application/json'
        }
      }).then(res => res.json())
      .catch(error => console.error('Error:', error))
      .then(response => location.reload());

}


function passingmodal(id){
$('#deleteBook').on('show.bs.modal', function(e) {

  //get data-id attribute of the clicked element
  var bookId = id;

  //populate the textbox
  $(e.currentTarget).find('input[name="bookId"]').val(bookId);
});
}

