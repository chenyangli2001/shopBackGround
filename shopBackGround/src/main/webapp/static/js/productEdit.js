$("#submit").click(function () {
    $("#formPid").val($("#id").val());
    $("#formPname").val($("#pname").val());
    $("#formMarketPrice").val($("#marketprice").val());
    $("#formShopPrice").val($("#shopprice").val());
    $("#formIsHot").val($("input[name=hot]").val());
    $("#formCid").val($("#type").val());
    $("#formPdesc").val($("#info").val());

    var imgFile = $("#imgFile")[0].files[0];
    var formData = new FormData();
    formData.append("imgFile", imgFile);
    $.ajax({
        url: "/shopBackGround/updateImg",
        type: 'POST',
        data: formData,
        contentType: false,
        processData: false,
        cache: false,
        success: function (data) {
            if (data.success) {
                $("#formPimage").val(data.imgPath);
            }
            updataPro();
        },
        error: function () {
            alert("错误！")
        }
    });
});

function updataPro() {
    $.ajax({
        url: "/shopBackGround/updatePro",
        type: "POST",
        data: $("#formPro").serialize(),
        success: function (result) {
            alert("cg!")
        },
        error: function () {
            alert("更新失败!");
        }
    });
}
