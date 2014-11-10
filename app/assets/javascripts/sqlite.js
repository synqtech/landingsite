 


var createStatement = "CREATE TABLE IF NOT EXISTS Contacts (id INTEGER PRIMARY KEY AUTOINCREMENT, itemname TEXT, item_id TEXT, item_img TEXT)";
 
var selectAllStatement = "SELECT * FROM Contacts";
 
var insertStatement = "INSERT INTO Contacts (itemname, item_id) VALUES (?, ?, ?)";
 
var updateStatement = "UPDATE Contacts SET itemname = ?, item_id = ? WHERE id=?";
 
var deleteStatement = "DELETE FROM Contacts WHERE id=?";
 
var dropStatement = "DROP TABLE Contacts";
 
var db = openDatabase("AddressBook", "1.0", "Address Book", 200000);  // Open SQLite Database
 
var dataset;
 
var DataType;

function warn_incompatible_browser() {
    $("#browser_alert").append("This website is optimized for modern browsers. Please consider upgrading to Chrome, Safari, or Firefox to allow HTML5 features");
}
 
function initDatabase()  // Function Call When Page is ready.
 
{
 
    try {
 
        if (!window.openDatabase)  // Check browser is supported SQLite or not.
 
        {
 
            warn_incompatible_browser();
 
        }
 
        else {
 
            createTable();  // If supported then call Function for create table in SQLite
 
        }
 
    }
 
    catch (e) {
 
        if (e == 2) {
 
            // Version number mismatch. 
 
            console.log("Invalid database version.");
 
        } else {
 
            console.log("Unknown error " + e + ".");
 
        }
 
        return;
 
    }
 
}
 
function createTable()  // Function for Create Table in SQLite.
 
{
 
    db.transaction(function (tx) { tx.executeSql(createStatement, [], showRecords, onError); });
 
}
 
function insertRecord() // Get value from Input and insert record . Function Call when Save/Submit Button Click..
 
{
 
        var usernametemp = $('input:text[id=username]').val();
 
        var useremailtemp = $('input:text[id=useremail]').val();
        db.transaction(function (tx) { tx.executeSql(insertStatement, [usernametemp, useremailtemp], loadAndReset, onError); });
 
        //tx.executeSql(SQL Query Statement,[ Parameters ] , Sucess Result Handler Function, Error Result Handler Function );
 
}
 
function deleteRecord(id) // Get id of record . Function Call when Delete Button Click..
 
{
 
    var iddelete = id.toString();
 
    db.transaction(function (tx) { tx.executeSql(deleteStatement, [id], showRecords, onError); alert("Delete Sucessfully"); });
 
    resetForm();
 
}
 
function updateRecord() // Get id of record . Function Call when Delete Button Click..
 
{
 
    var usernameupdate = $('input:text[id=username]').val().toString();
 
    var useremailupdate = $('input:text[id=useremail]').val().toString();
 
    var useridupdate = $("#id").val();
 
    db.transaction(function (tx) { tx.executeSql(updateStatement, [usernameupdate, useremailupdate, Number(useridupdate)], loadAndReset, onError); });
 
}
 
function dropTable() // Function Call when Drop Button Click.. Talbe will be dropped from database.
 
{
 
    db.transaction(function (tx) { tx.executeSql(dropStatement, [], showRecords, onError); });
 
    resetForm();
 
    initDatabase();
 
}