<canvas id="myChart" width="400" height="200"></canvas>
<script>
    $(function () {
        var ctx = document.getElementById("myChart").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ["周一", "周二", "周三", "周四", "周五", "周六"],
                datasets: [
                    {
                        label: '注册人数',
                        //数据类型 折线图
                        type: "line",
                        data: [12, 19, 3, 5, 2, 3],
                        backgroundColor: 'rgba(54, 162, 235, 0.1)',
                        borderColor: 'rgba(255,99,132,1)',
                        borderWidth: 1
                    }]
            },
            options: {
                scales: {//显示数值
                    "animation": {
                        "duration": 1,
                        "onComplete": function () {
                            var chartInstance = this.chart,
                                ctx = chartInstance.ctx;

                            ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
                            //设置字体颜色
                            ctx.fillStyle = "black";
                            ctx.textAlign = 'center';
                            ctx.textBaseline = 'bottom';

                            this.data.datasets.forEach(function (dataset, i) {
                                var meta = chartInstance.controller.getDatasetMeta(i);
                                meta.data.forEach(function (bar, index) {
                                    var data = dataset.data[index];
                                    ctx.fillText(data, bar._model.x, bar._model.y - 5);
                                });
                            });
                        }
                    }
                }
            }
        });
    });
</script>