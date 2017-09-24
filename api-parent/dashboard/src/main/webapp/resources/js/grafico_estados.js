var myChart = echarts.init(document.getElementById('main4'));
					option = {
						tooltip: {
							trigger: 'axis',
							axisPointer: {
								type: 'shadow'
							}
						}
						,grid: {
							left: '3%',
							right: '4%',
							bottom: '3%',
							containLabel: true
						},
						xAxis: {
							type: 'value',
							boundaryGap: [0, 0.01]
						},
						yAxis: {
							type: 'category',
							data: ['Outros','RJ','SP','PR']
						},
						series: [
							{
								name: '',
								type: 'bar',
								data: [18203, 23489, 29034, 35000]
							}
						]
					};
					myChart.setOption(option);