var JSQL = (function () {
	var db_json = {}
	var tables = {};
	var db = openDatabase('newTable', 1.0, 'table', 200000)


	var init = function (abbr, version, name) {
		
		

		try {
 
	        if (!window.openDatabase)  // Check browser is supported SQLite or not.
	 
	        {
	 
	            warn_incompatible_browser();
	 
	        }
	 
	        else {
	 
	            createTable(fields);  // If supported then call Function for create table in SQLite
	 
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


	var create_table = function(name, fields) {
		
		var createStatement = "CREATE TABLE IF NOT EXISTS "+name+" (id INTEGER PRIMARY KEY AUTOINCREMENT, "+fields+")";

		db.transaction(function (tx) { tx.executeSql(createStatement, [], showRecords, onError); });

	}

	var insert = function(table, fields_json) {

		var fields = Object.keys(fields_json)
		var fl_s  = fields.join(",");
		var qm = new Array(fields.length+1).join('?').split('').join(",");

		var insertStatement = "INSERT INTO "+table+" ("+fl_s+") VALUES ("+qm+")";
		var values = [];
		for (var i = 0; i<fields.length; i++) {
			values.push(fields_json(fields[i]));
			alert("pushed field: "+fields_json(fields[i]));
		}
		

		db.transaction(function (tx) { tx.executeSql(insertStatement, values, loadAndReset, onError); });
	}

	// var insert = function(fields) {
		
	// 	var base="INSERT INTO Contacts (itemname, item_id) VALUES (?, ?, ?)"
	// 	var fl  = '';
	// 	var bl  = '';
		
	// 	fl = Object.keys(fields).join(',');

	// 	insertStatement = "INSERT INTO "


 //  		db.transaction(function (tx) { tx.executeSql(insertStatement, [usernametemp, useremailtemp], loadAndReset, onError); });
 
 //        //tx.executeSql(SQL Query Statement,[ Parameters ] , Sucess Result Handler Function, Error Result Handler Function );
 
	// }

	// var get_json = function() {
	// 	return db_json;
	// }

	function warn_incompatible_browser() {
		alert("Incompatible Browser");
	}

	function show_table(table) // Function For Retrive data from Database Display records as list
	 
	{
	 	
		var selectAllStatement = "SELECT * FROM "+table;

	 	results = []
	 
	    db.transaction(function (tx) {
	 
	        tx.executeSql(selectAllStatement, [], function (tx, result) {
	 
	            dataset = result.rows;
	 
	            for (var i = 0, item = null; i < dataset.length; i++) {
	 
	                item = dataset.item(i);
	 				results.push(item);
	 
	            }
	 
	        });
	 
	    });

	    return results;
	 
	}



	return {
		init: init,
		create_table: create_table,
		insert: insert,
		show_table: show_table

	}
}());