$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'test/testtest/list',
        datatype: "json",
        colModel: [
            //网格，红色的度是关键字，切勿改
            // {label: 'id', id: 'id', index: 'id', width: 50, key: true},
            {label: '用户名', name: 'name', index: 'name', width: 80},
            {label: '年龄', name: 'age', index: 'age', width: 80},
            {label: '性别', name: 'sex', index: 'sex', width: 80},
            {label: '地址', name: 'address', index: 'address', width: 80}
        ],
        viewrecords: true,
        height: 385,
        rowNum: 10,
        rowList: [10, 30, 50],
        rownumbers: true,
        rownumWidth: 25,
        autowidth: true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader: {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames: {
            page: "page",
            rows: "limit",
            order: "order"
        },
        gridComplete: function () {
            //隐藏grid底部滚动条
            $("#jqGrid").closest(".ui-jqgrid-bdiv").css({"overflow-x": "hidden"});
        }
    });
});

var vm = new Vue({
    el: '#rrapp',
    data: {
        q: {
            name: null
        },
        showList: true,
        title: null,
        testTest: {}
    },
    methods: {
        query: function () {
            vm.reload();
        },
        add: function () {
            vm.showList = false;
            vm.title = "新增";
            vm.testTest = {};
        },

        //
        update: function (event) {
            var id = getSelectedRow();
            if (id == null) {
                return;
            }
            vm.showList = false;
            vm.title = "修改";

            vm.getInfo(id)
        },

        //更新
        saveOrUpdate: function (event) {
            var url = vm.testTest.id == null ? "test/testtest/save" : "test/testtest/update";
            $.ajax({
                type: "POST",
                url: baseURL + url,
                contentType: "application/json",
                data: JSON.stringify(vm.testTest),
                success: function (r) {
                    if (r.code === 0) {
                        alert('操作成功', function (index) {
                            vm.reload();
                        });
                    } else {
                        alert(r.msg);
                    }
                }
            });
        },

        //删除
        del: function (event) {
            var ids = getSelectedRows();
            if (ids == null) {
                return;
            }

            confirm('确定要删除选中的记录？', function () {
                $.ajax({
                    type: "POST",
                    url: baseURL + "test/testtest/delete",
                    contentType: "application/json",
                    data: JSON.stringify(ids),
                    success: function (r) {
                        if (r.code == 0) {
                            alert('操作成功', function (index) {
                                $("#jqGrid").trigger("reloadGrid");
                            });
                        } else {
                            alert(r.msg);
                        }
                    }
                });
            });
        },

        //获取信息
        getInfo: function (id) {
            $.get(baseURL + "test/testtest/info/" + id, function (r) {
                vm.testTest = r.testTest;
            });
        },
        /*
           查询记住要重写原来的方法，原来的没有获取对应的值，传递过去
           reload: function (event) {
              vm.showList = true;
              var page = $("#jqGrid").jqGrid('getGridParam', 'page');
              $("#jqGrid").jqGrid('setGridParam', {
                  page: page
              }).trigger("reloadGrid");
          }*/
        //重新加载，和搜索
        reload: function (event) {
            vm.showList = true;
            var page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                postData: {'name': vm.q.name},
                page: page
            }).trigger("reloadGrid");
        }
    }
});