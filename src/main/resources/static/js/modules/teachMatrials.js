/**
 * 初始化事件
 */
$(function () {
        InitMainTable();
})

var $table;
//初始化bootstrap-table的内容
function InitMainTable () {
    //记录页面bootstrap-table全局变量$table，方便应用
    $table = $('#teach_files').bootstrapTable('destroy').bootstrapTable({
        url: 'http://localhost:8080/etims/teachMatrials/findTeachFilesAll',                      //请求后台的URL（*）
        method: 'GET',                      //请求方式（*）
        toolbar: '#toolbar',              //工具按钮用哪个容器
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        sortable: true,                     //是否启用排序
        sortOrder: "asc",                   //排序方式
        sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
        pageSize: 10,                     //每页的记录行数（*）
        pageList: [5,10,20,50,100],        //可供选择的每页的行数（*）
        search: false,                      //是否显示表格搜索
        strictSearch: true,
        showColumns: true,                  //是否显示所有的列（选择显示的列）
        showRefresh: true,                  //是否显示刷新按钮
        minimumCountColumns: 2,             //最少允许的列数
        clickToSelect: true,                //是否启用点击选中行
        //height: 500,                      //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
        uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
        showToggle: true,                   //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图
        detailView: false,                  //是否显示父子表
        //得到查询的参数
        queryParams : function (params) {
            //这里的键的名字和控制器的变量名必须一致，这边改动，控制器也需要改成一样的
            var temp = {
                rows: params.limit,                         //页面大小
                page: (params.offset / params.limit) + 1,   //页码
                sort: params.sort,      //排序列名
                sortOrder: params.order, //排位命令（desc，asc）
                keyword:$('input[name="keyword"]').val()
            };
            return temp;
        },
        columns: [{
            checkbox: true,
            visible: true                  //是否显示复选框
        }, {
            field: 'file_name',
            title: '文件名称',
            sortable: true
        }, {
            field: 'course_type',
            title: '课程类型',
            sortable: true
        }, {
            field: 'category',
            title: '资料分类',
            sortable: true
        }, {
            field: 'uploader',
            title: '上传者'
        }, {
            field: 'file_map',
            title: '文件路径'
        }, {
            field: 'create_time',
            title: '创建时间',
            formatter:function (value,rows,index) {
                return datetimeFormat(value);
            }
        }, {
            field:'id',
            title: '操作',
            width: 180,
            align: 'center',
            valign: 'middle',
            formatter:actionFormatter
        }, ],
        onLoadSuccess: function () {
        },
        onLoadError: function () {
            showTips("数据加载失败！");
        },
        onDblClickRow: function (row, $element) {
            var id = row.ID;
           // EditViewById(id, 'view');
        }
    });
}

//操作栏的格式化
function actionFormatter(value, row, index) {
    var id = row.id;
    var result = "";
    //result += "<a style='margin: 3px;' href='javascript:;' class='btn btn-white btn-sm' onclick=\"addForm('" + id + "', '查看用户')\" title='查看'><span class='glyphicon glyphicon-search'></span> 查看</a>";
    result += "<a style='margin: 3px;' href='javascript:;' class='btn btn-white btn-sm' onclick=\"addForm('" + id + "','编辑用户')\" title='编辑'><span class='fa fa-pencil'></span> 编辑</a>";
    result += "<a style='margin: 3px;' href='javascript:;' class='btn btn-white btn-sm' onclick=\"DeleteByIds('" + id + "')\" title='删除'><span class='glyphicon glyphicon-remove'></span> 删除</a>";

    return result;
}

function statusFormatter(value,row,index) {
    if(value==1){
        return "停用";
    }else if(value==0){
        return "启用";
    }
}

function reloadTable() {
    //$table.reload();
    $table.bootstrapTable('refresh');
}

function DeleteByIds(id) {
    if(!id){
        layer.alert("请选择删除数据");
        return;
    }
    layer.confirm('你确定删除该用户？', {
        time: 0 //不自动关闭
        ,btn: ['确定', '取消']
        ,yes: function(index){
            $.ajax({
                type: "POST",
                dataType: "json",
                cache: false,
                url: "/sys/user/delete/"+id,
                success: function (result) {
                    if (result.resultStat=="SUCCESS") {
                        //var mylay = parent.layer.getFrameIndex("userFormLayer");
                        // parent.layer.close(mylay);
                        layer.msg('删除成功！', {
                            time: 2000 //20s后自动关闭
                        });
                        layer.close(index);
                        $('#teach_files').bootstrapTable('refresh');
                    } else {
                        layer.alert("删除失败");
                    }
                },
                error: function (result) {
                    layer.alert("删除失败，"+result.mess);
                }
            });
        }
    });
    
}

function batchDeleteUser() {
    var data=$("#teach_files").bootstrapTable('getSelections');
    var ids=[];
    if(!data||data.length==0){
        layer.alert("请选择删除的数据！");
        return;
    }else{
        for(var i=0;i<data.length;i++){
            var row=data[i];
            ids.push(row.id);
        }
    }
    console.log(data);
    layer.confirm('你确定删除所选的用户？', {
        time: 0 //不自动关闭
        ,btn: ['确定', '取消']
        ,yes: function(index){
            $.ajax({
                type: "POST",
                //dataType: "json",
                //cache: false,
                url: "/sys/user/batchDelete",
                data:{ids:ids},
                success: function (result) {
                    if (result.resultStat=="SUCCESS") {
                        //var mylay = parent.layer.getFrameIndex("userFormLayer");
                        // parent.layer.close(mylay);
                        layer.msg('删除成功！', {
                            time: 2000 //20s后自动关闭
                        });
                        layer.close(index);
                        $('#teach_files').bootstrapTable('refresh');
                    } else {
                        layer.alert("删除失败");
                    }
                },
                error: function (result) {
                    layer.alert("删除失败，"+result.mess);
                }
            });
        }
    });
}

function addForm(id,type) {
    userFormLayer= layer.open({
        type: 2,
        title: type,
        area: ['880px', '500px'],
        maxmin: true,
        shade: 0.8,
        closeBtn: 1,
        shadeClose: true,
        content: '/sys/user/form',
        /*btn: ['保存', '关闭'],
        yes: function(){
            alert("yes");
        }*/
        end: function () {
            //window.location.reload();
            $('#teach_files').bootstrapTable('refresh');
        },
        success: function(layero, index){
            var body=layer.getChildFrame('body',index);
            var $form=$(body).find("#user_form");
            if(type!="新增用户"){
                if(type=="查看用户"){
                    $form.find("input").prop("readonly",true);
                    $form.find("#saveUserBtn").addClass("hide");
                }
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    cache: false,
                    async:false,
                    url: "/sys/user/view/"+id,
                    success: function (result) {
                        if(result){
                            for (i in result){
                                $form.find("input[name=\'"+i+"\']").not("input:radio").val(result[i]);
                            }
                            $form.find("input[name='status'][value=\'"+result.status+"\']").prop("checked",true);
                            $form.find("input[name='sex'][value=\'"+result.sex+"\']").prop("checked",true);
                            $form.find('select[name="constellation"]').find("option[value=\'"+result.constellation+"\']").prop("selected",true);
                        }
                    },
                    error: function (result) {
                        layer.alert("数据加载失败，"+result.mess);
                    }
                });
            }
        }
    });
}