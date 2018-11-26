$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'transport/transportaddressmanagement/list',
        datatype: "json",
        colModel: [			
			{ label: 'senderId', name: 'senderId', index: 'sender_id', width: 50, key: true },
			{ label: '发送人', name: 'sender', index: 'sender', width: 80 }, 			
			{ label: '省份id', name: 'provinceId', index: 'province_id', width: 80 }, 			
			{ label: '城市id', name: 'city', index: 'city', width: 80 }, 			
			{ label: '区域id', name: 'area', index: 'area', width: 80 }, 			
			{ label: '详细地址', name: 'address', index: 'address', width: 80 }, 			
			{ label: '邮编', name: 'postcode', index: 'postcode', width: 80 }, 			
			{ label: '手机号码', name: 'phone', index: 'phone', width: 80 }, 			
			{ label: '电话号码', name: 'mobile', index: 'mobile', width: 80 }, 			
			{ label: '是否默认地址，0否，1是', name: 'isDefault', index: 'is_default', width: 80 }			
        ],
		viewrecords: true,
        height: 385,
        rowNum: 10,
		rowList : [10,30,50],
        rownumbers: true, 
        rownumWidth: 25, 
        autowidth:true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader : {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames : {
            page:"page", 
            rows:"limit", 
            order: "order"
        },
        gridComplete:function(){
        	//隐藏grid底部滚动条
        	$("#jqGrid").closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" }); 
        }
    });
});

var vm = new Vue({
	el:'#rrapp',
	data:{
		showList: true,
		title: null,
		transportAddressManagement: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.transportAddressManagement = {};
		},
		update: function (event) {
			var senderId = getSelectedRow();
			if(senderId == null){
				return ;
			}
			vm.showList = false;
            vm.title = "修改";
            
            vm.getInfo(senderId)
		},
		saveOrUpdate: function (event) {
			var url = vm.transportAddressManagement.senderId == null ? "transport/transportaddressmanagement/save" : "transport/transportaddressmanagement/update";
			$.ajax({
				type: "POST",
			    url: baseURL + url,
                contentType: "application/json",
			    data: JSON.stringify(vm.transportAddressManagement),
			    success: function(r){
			    	if(r.code === 0){
						alert('操作成功', function(index){
							vm.reload();
						});
					}else{
						alert(r.msg);
					}
				}
			});
		},
		del: function (event) {
			var senderIds = getSelectedRows();
			if(senderIds == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: baseURL + "transport/transportaddressmanagement/delete",
                    contentType: "application/json",
				    data: JSON.stringify(senderIds),
				    success: function(r){
						if(r.code == 0){
							alert('操作成功', function(index){
								$("#jqGrid").trigger("reloadGrid");
							});
						}else{
							alert(r.msg);
						}
					}
				});
			});
		},
		getInfo: function(senderId){
			$.get(baseURL + "transport/transportaddressmanagement/info/"+senderId, function(r){
                vm.transportAddressManagement = r.transportAddressManagement;
            });
		},
		reload: function (event) {
			vm.showList = true;
			var page = $("#jqGrid").jqGrid('getGridParam','page');
			$("#jqGrid").jqGrid('setGridParam',{ 
                page:page
            }).trigger("reloadGrid");
		}
	}
});