function validateMenuItemForm() {
    var name = document.forms["menuItemForm"]["name"].value;
    if (name == "") {
        alert("Title is required.");
        return false;
    }
    if (name.length < 2 || name.length > 65) {
        alert("Title should have 2 to 65 characters.");
        return false;
    }

    var price = document.forms["menuItemForm"]["price"].value;

    if (price == "") {
        alert("price is required.");
        return false;
    }
    if (isNaN(price)) {
        alert("price has to be number.");
        return false;
    }
    var dateOfLaunch = document.forms["menuItemForm"]["dateOfLaunch"].value;
    if (dateOfLaunch == "") {
        alert("Date of Launch is required.");
        return false;
    }
    var category = document.forms["menuItemForm"]["category"].value;
    if (category == "") {
        alert("Select one category");
        return false;
    }
}
