var myChart = echarts.init(document.getElementById('main'));

						// specify chart configuration item and data
						var option = {
							tooltip: {
								trigger: 'axis'
							},
							legend: {
								data:['Visualizações','Usuários','Sessões','Pesquisas']
							},
							grid: {
								left: '3%',
								right: '4%',
								bottom: '3%',
								containLabel: true
							},
							xAxis: {
								type: 'category',
								boundaryGap: false,
								data: ['17/09','18/09','19/09','20/09','21/09','22/09','23/09']
							},
							yAxis: {
								type: 'value'
							},
							series: [
								{
									name:'Visualizações',
									type:'line',
									stack: '总量',
									data:[120, 132, 101, 134, 90, 230, 210]
								},
								{
									name:'Usuários',
									type:'line',
									stack: '总量',
									data:[220, 182, 191, 234, 290, 330, 310]
								},
								{
									name:'Sessões',
									type:'line',
									stack: '总量',
									data:[150, 232, 201, 154, 190, 330, 410]
								},
								{
									name:'Pesquisas',
									type:'line',
									stack: '总量',
									data:[320, 332, 301, 334, 390, 330, 320]
								}
							]
						};

						// use configuration item and data specified to show chart
						myChart.setOption(option);