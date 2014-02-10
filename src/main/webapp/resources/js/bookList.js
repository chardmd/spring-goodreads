var BookList = function(){
	return {
		init: function() {
			jQuery('.datatable').dataTable(); 
		}
	};
}();
jQuery(document).ready(function() {
	BookList.init();
});