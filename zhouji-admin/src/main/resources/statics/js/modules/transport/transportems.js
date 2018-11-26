$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'transport/transportems/list',
        datatype: "json",
        colModel: [			
			{ label: 'emsId', name: 'emsId', index: 'ems_id', width: 50, key: true },
			{ label: '快递公司名称', name: 'emsName', index: 'ems_name', width: 80 }, 			
			{ label: '备注', name: 'emsRemark', index: 'ems_remark', width: 80 }			
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
		transportEms: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.transportEms = {};
		},
		update: function (event) {
			var emsId = getSelectedRow();
			if(emsId == null){
				return ;
			}
			vm.showList = false;
            vm.title = "修改";
            
            vm.getInfo(emsId)
		},
		saveOrUpdate: function (event) {
			var url = vm.transportEms.emsId == null ? "transport/transportems/save" : "transport/transportems/update";
			$.ajax({
				type: "POST",
			    url: baseURL + url,
                contentType: "application/json",
			    data: JSON.stringify(vm.transportEms),
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
			var emsIds = getSelectedRows();
			if(emsIds == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: baseURL + "transport/transportems/delete",
                    contentType: "application/json",
				    data: JSON.stringify(emsIds),
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
		getInfo: function(emsId){
			$.get(baseURL + "transport/transportems/info/"+emsId, function(r){
                vm.transportEms = r.transportEms;
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