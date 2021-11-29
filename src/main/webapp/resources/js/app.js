/**
 * 
 */


function deleteBook (id ){
  fetch("http://localhost:8080/book/deleteBook/"+id, {
        method: 'DELETE' // or 'PUT
      }).then(res => res.json())
      .catch(error => console.error('Error:', error))
      .then(response => console.log('Success:', response));
}


function update(id){

  var formElement = document.getElementById("updateForm");
  var formData = new FormData(formElement);
    console.log(id);
    
    fetch("http://localhost:8080/book/updateBook", {
        method: 'POST', // or 'PUT'
        body: JSON.stringify(formData), // data can be `string` or {object}!
        headers:{
          'Content-Type': 'application/json'
        }
      }).then(res => res.json())
      .catch(error => console.error('Error:', error))
      .then(response => console.log('Success:', response));

}

