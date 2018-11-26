$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'transport/transporttemplateexpand/list',
        datatype: "json",
        colModel: [			
			{ label: 'id', name: 'id', index: 'id', width: 50, key: true },
			{ label: '运输表id', name: 'transportTemplateId', index: 'transport_template_id', width: 80 }, 			
			{ label: '省id', name: 'provinceId', index: 'province_id', width: 80 }, 			
			{ label: '城市id', name: 'city', index: 'city', width: 80 }, 			
			{ label: '区域id', name: 'area', index: 'area', width: 80 }, 			
			{ label: '首件', name: 'firstNumber', index: 'first_number', width: 80 }, 			
			{ label: '首次价格', name: 'firstPrice', index: 'first_price', width: 80 }, 			
			{ label: '增加件数', name: 'addNumber', index: 'add_number', width: 80 }, 			
			{ label: '增加价格', name: 'addPrice', index: 'add_price', width: 80 }, 			
			{ label: '创建人', name: 'createPerson', index: 'create_person', width: 80 }, 			
			{ label: '创建时间', name: 'createTime', index: 'create_time', width: 80 }, 			
			{ label: '更新人', name: 'updatePerson', index: 'update_person', width: 80 }, 			
			{ label: '更新时间', name: 'updateTime', index: 'update_time', width: 80 }, 			
			{ label: '删除表标记，0不删除，1删除', name: 'delFlag', index: 'del_flag', width: 80 }			
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
		transportTemplateExpand: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.transportTemplateExpand = {};
		},
		update: function (event) {
			var id = getSelectedRow();
			if(id == null){
				return ;
			}
			vm.showList = false;
            vm.title = "修改";
            
            vm.getInfo(id)
		},
		saveOrUpdate: function (event) {
			var url = vm.transportTemplateExpand.id == null ? "transport/transporttemplateexpand/save" : "transport/transporttemplateexpand/update";
			$.ajax({
				type: "POST",
			    url: baseURL + url,
                contentType: "application/json",
			    data: JSON.stringify(vm.transportTemplateExpand),
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
			var ids = getSelectedRows();
			if(ids == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: baseURL + "transport/transporttemplateexpand/delete",
                    contentType: "application/json",
				    data: JSON.stringify(ids),
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
		getInfo: function(id){
			$.get(baseURL + "transport/transporttemplateexpand/info/"+id, function(r){
                vm.transportTemplateExpand = r.transportTemplateExpand;
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