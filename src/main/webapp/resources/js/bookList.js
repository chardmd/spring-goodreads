var BookList = function(){
	return {
		init: function() {
			jQuery('.datatable').dataTable({
				"sDom": 'T<"clear">lfrtip',
		        "oTableTools": {
		            "sSwfPath": "/goodreads/resources/js/tableTools/copy_csv_xls_pdf.swf"
		        }
			}); 
		}
	};
}();
jQuery(document).ready(function() {
	BookList.init();
});