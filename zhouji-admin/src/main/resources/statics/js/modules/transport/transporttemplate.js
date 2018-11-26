$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'transport/transporttemplate/list',
        datatype: "json",
        colModel: [			
			{ label: 'transportTemplateId', name: 'transportTemplateId', index: 'transport_template_id', width: 50, key: true },
			{ label: '计价方式，1重量，2件数', name: 'payType', index: 'pay_type', width: 80 }, 			
			{ label: '运送方式 , 1快递，2平邮，3EMS 4货运', name: 'transportType', index: 'transport_type', width: 80 }, 			
			{ label: '说明', name: 'desc', index: 'desc', width: 80 }, 			
			{ label: '创建人', name: 'createPerson', index: 'create_person', width: 80 }, 			
			{ label: '创建时间', name: 'createTime', index: 'create_time', width: 80 }, 			
			{ label: '更新人', name: 'updatePerson', index: 'update_person', width: 80 }, 			
			{ label: '更新时间', name: 'updateTime', index: 'update_time', width: 80 }, 			
			{ label: '删除标记，0不删除，1删除', name: 'delFlag', index: 'del_flag', width: 80 }, 			
			{ label: '默认件数', name: 'defaultNumber', index: 'default_number', width: 80 }, 			
			{ label: '默认运费价格', name: 'defaultPrice', index: 'default_price', width: 80 }, 			
			{ label: '增加件数', name: 'defaultAddNumber', index: 'default_add_number', width: 80 }, 			
			{ label: '增加的价格', name: 'defaultAddPrice', index: 'default_add_price', width: 80 }			
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
		transportTemplate: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.transportTemplate = {};
		},
		update: function (event) {
			var transportTemplateId = getSelectedRow();
			if(transportTemplateId == null){
				return ;
			}
			vm.showList = false;
            vm.title = "修改";
            
            vm.getInfo(transportTemplateId)
		},
		saveOrUpdate: function (event) {
			var url = vm.transportTemplate.transportTemplateId == null ? "transport/transporttemplate/save" : "transport/transporttemplate/update";
			$.ajax({
				type: "POST",
			    url: baseURL + url,
                contentType: "application/json",
			    data: JSON.stringify(vm.transportTemplate),
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
			var transportTemplateIds = getSelectedRows();
			if(transportTemplateIds == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: baseURL + "transport/transporttemplate/delete",
                    contentType: "application/json",
				    data: JSON.stringify(transportTemplateIds),
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
		getInfo: function(transportTemplateId){
			$.get(baseURL + "transport/transporttemplate/info/"+transportTemplateId, function(r){
                vm.transportTemplate = r.transportTemplate;
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