function validateForm() {
  var name = document.forms["subscribe"]["name"].value;
    var email = document.forms["subscribe"]["email"].value;
  if (name == "" || email == "") {
    alert("Būtina užpildyti visus laukus!");
    return false;
  }
  if (name !== "" || email !== "") {
    alert("Prenumerata sėkminga!");
    alert.classList.add("hide");
  }
}
