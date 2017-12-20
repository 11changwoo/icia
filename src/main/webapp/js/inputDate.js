$(function() {
	$("#testDatepicker").datepicker(
			{
				changeMonth : true,
				altField : '#testDatepicker',
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
						'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
						'9월', '10월', '11월', '12월' ],
				showButtonPanel : true,
				currentText : '오늘 날짜',
				closeText : '닫기',
				dateFormat : "yymmdd",
				onSelect : function(value) {
					sub = sub + ", " + value;
				}
			});
});

$(function() {
	$("#testDatepicker1").datepicker(
			{
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
						'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
						'9월', '10월', '11월', '12월' ],
				showButtonPanel : true,
				currentText : '오늘 날짜',
				closeText : '닫기',
				dateFormat : "yymmdd",
				onSelect : function(value) {
					sub = sub + ", " + value;
				}
			});
});