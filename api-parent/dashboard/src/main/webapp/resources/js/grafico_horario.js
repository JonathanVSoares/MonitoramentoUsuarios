// based on prepared DOM, initialize echarts instance
						var myChart = echarts.init(document.getElementById('main2'));

						// specify chart configuration item and data
						
						var hours = ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'];
						var days = ['00:00', '02:00', '04:00',
								'06:00', '08:00', '10:00', '12:00', '14:00', '16:00', '18:00', '20:00', '22:00', '24:00'];

						var data = [[0,3,7]];
						data = data.map(function (item) {
							return [item[1], item[0], item[2] || '-'];
						});

						var option = {
							tooltip: {
								position: 'top'
							},
							animation: false,
							grid: {
								height: '50%',
								y: '10%'
							},
							xAxis: {
								type: 'category',
								data: hours,
								splitArea: {
									show: true
								}
							},
							yAxis: {
								type: 'category',
								data: days,
								splitArea: {
									show: true
								}
							},
							visualMap: {
								min: 0,
								max: 20,
								calculable: true,
								orient: 'horizontal',
								left: 'center',
								bottom: '10%'
							},
							series: [{
								name: 'Punch Card',
								type: 'heatmap',
								data: data,
								label: {
									normal: {
										show: true
									}
								},
								itemStyle: {
									emphasis: {
										shadowBlur: 20,
										shadowColor: 'rgba(0, 0, 0, 0)'
									}
								}
							}]
						};
						// use configuration item and data specified to show chart
						myChart.setOption(option);