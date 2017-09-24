// based on prepared DOM, initialize echarts instance
						var myChart = echarts.init(document.getElementById('main3'));
						option = {
							tooltip : {
								trigger: 'item',
								formatter: "{a} <br/>{b} : {c} ({d}%)"
							},
							legend: {
								orient: 'horizontal',
								left: 'left',
								data: ['Desktop','Celular','Tablet']
							},
							series : [
								{
									name: 'Dispositivo',
									type: 'pie',
									radius : '55%',
									center: ['50%', '60%'],
									data:[
										{value:335, name:'Desktop'},
										{value:310, name:'Celular'},
										{value:234, name:'Tablet'}
									],
									itemStyle: {
										emphasis: {
											shadowBlur: 10,
											shadowOffsetX: 0,
											shadowColor: 'rgba(0, 0, 0, 0.5)'
										}
									}
								}
							]
						};

						// use configuration item and data specified to show chart
						myChart.setOption(option);