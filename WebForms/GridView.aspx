<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="Testes.WebForms.GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <script>

        var isEditing = false,
	                    tempNameValue = "",
	                    tempDataValue = "";

// Handles live/dynamic element events, i.e. for newly created edit buttons
$(document).on('click', '.edit', function() {
	var parentRow = $(this).closest('tr'),
		tableBody = parentRow.closest('tbody'),
		tdName = parentRow.children('td.name'),
		tdData = parentRow.children('td.data');

	if (isEditing) {
		var nameInput = tableBody.find('input[name="name"]'),
			dataInput = tableBody.find('input[name="data"]'),
			tdNameInput = nameInput.closest('td'),
			tdDataInput = dataInput.closest('td'),
			currentEdit = tdNameInput.parent().find('td.edit');

		if ($(this).is(currentEdit)) {
			// Save new values as static html
			var tdNameValue = nameInput.prop('value'),
				tdDataValue = dataInput.prop('value');

			tdNameInput.empty();
			tdDataInput.empty();

			tdNameInput.html(tdNameValue);
			tdDataInput.html(tdDataValue);
		} else {
			// Restore previous html values
			tdNameInput.empty();
			tdDataInput.empty();

			tdNameInput.html(tempNameValue);
			tdDataInput.html(tempDataValue);
		}
		
		
		// Display static row
		currentEdit.html('<i class="fa fa-pencil" aria-hidden="true"></i>');
		isEditing = false;
	} else {
		// Display editable input row
		isEditing = true;
		$(this).html('<i class="fa fa-floppy-o" aria-hidden="true"></i>');

		var tdNameValue = tdName.html(),
			tdDataValue = tdData.html();

		// Save current html values for canceling an edit
		tempNameValue = tdNameValue;
		tempDataValue = tdDataValue;

		// Remove existing html values
		tdName.empty();
		tdData.empty();

		// Create input forms
		tdName.html('<input type="text" name="name" value="' + tdNameValue + '">');
		tdData.html('<input type="text" name="data" value="' + tdDataValue + '">');
	}
});

// Handles live/dynamic element events, i.e. for newly created trash buttons
$(document).on('click', '.trash', function() {
	// Turn off editing if row is current input
	if (isEditing) {
		var parentRow = $(this).closest('tr'),
			tableBody = parentRow.closest('tbody'),
			tdInput = tableBody.find('input').closest('td'),
			currentEdit = tdInput.parent().find('td.edit'),
			thisEdit = parentRow.find('td.edit');

		if (thisEdit.is(thisEdit)) {
			isEditing = false;
		}
	}

	// Remove selected row from table
	$(this).closest('tr').remove();
});

$('.new-row').on('click', function() {
	var tableBody = $(this).closest('tbody'),
		trNew = '<tr><td class="name"><input type="text" name="name" value=""></td><td class="data"><input type="text" name="data" value=""></td><td class="edit"><i class="fa fa-floppy-o" aria-hidden="true"></i></td><td class="trash"><i class="fa fa-ban" aria-hidden="true"></i></td></tr>';

	if (isEditing) {
		var nameInput = tableBody.find('input[name="name"]'),
			dataInput = tableBody.find('input[name="data"]'),
			tdNameInput = nameInput.closest('td'),
			tdDataInput = dataInput.closest('td'),
			currentEdit = tdNameInput.parent().find('td.edit');

		// Get current input values for newly created input cases
		var newNameInput = nameInput.prop('value'),
			newDataInput = dataInput.prop('value');

		// Restore previous html values
		tdNameInput.empty();
		tdDataInput.empty();

		tdNameInput.html(newNameInput);
		tdDataInput.html(newDataInput);

		// Display static row
		currentEdit.html('Edit');
	}

	isEditing = true;
	tableBody.find('tr:last').before(trNew);
});
    </script>

    <style>
        body {
	margin: 0;
	padding: 0;
}

 
table {
	width: 100%;
	background-color: #ffffff;
	border: none;
	border-collapse: collapse;
	font-family: 'Roboto', sans-serif;
}

table thead th {
	font-size: 1.25rem;
	padding: .5em 0 .5em 1em;
	background-color: #00a9ff;
	border: none;
	border-right: 1px solid #f1f1f1;
	border-bottom: 3px solid #bdbdbd;
	color: #ffffff;
	font-weight: 400;
	text-align: left;
}

table thead th:last-of-type {
	border-right: none;
}

table tbody tr:nth-of-type(even) {
	background-color: #f1f1f1;
}

table tbody td {
	padding: 1em;
	border-top: none;
	border-right: 1px solid #C1C3D1;
	border-bottom: 1px solid #C1C3D1;
	border-left: none;
}

.edit,
.trash,
.new-row {
	text-transform: uppercase;
	transition: .5s ease;
}

.edit:hover,
.trash:hover,
.new-row:hover {
	cursor: pointer;
	background-color: #e0e0e0;
}

.add-row {
	text-align: center;
}

.trash {
	color: #ff0000;
}

input[type="text"] {
	padding-left: 0.5rem;
	margin-left: -0.5rem;
	width: 100%;
	line-height: 1.8rem;
	font-size: 1rem;
	font-family: inherit;
	border-radius: 5px;
	border: 1px solid #bdbdbd;
	box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.75);
}


    </style>

    <form id="form1" runat="server">
        <div>
            <div class="content">
	<table>
		<thead>
			<tr>
				<th>URL</th>
				<th>Description</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="name">Doe, John</td>
				<td class="data">Sample Data</td>
				<td class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></td>
				<td class="trash"><i class="fa fa-ban" aria-hidden="true"></i></td>
			</tr>
			<tr>
				<td class="name">Smith, Jane</td>
				<td class="data">Another Sample</td>
				<td class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></td>
				<td class="trash"><i class="fa fa-ban" aria-hidden="true"></i></td>
			</tr>
			<tr>
				<td class="name">T, Mister</td>
				<td class="data">Samples are Best in Threes.</td>
				<td class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></td>
				<td class="trash"><i class="fa fa-ban" aria-hidden="true"></i></td>
			</tr>
			<tr class="add-row">
				<td colspan="4" class="new-row"><i class="fa fa-plus" aria-hidden="true"></i> Add New Row</td>
			</tr>
		</tbody>
	</table>
</div>

        </div>
    </form>
</body>
</html>
