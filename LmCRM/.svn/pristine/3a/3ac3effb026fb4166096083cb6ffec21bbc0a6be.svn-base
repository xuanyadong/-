

// Dashboard 1 Morris-chart
/*$(function(){
	
	$.ajax({
		  type:'POST',
		  url:'user/getData.do',
		  dataType:"json",
		  success:function(data){
			  alert(data)
		  },
	})
})*/
var arr=[{
    period: '2011',
    '营销部': 55,
    '客服部': 80,
    '销售部': 80,
    '售后部': 20,
    '人事部': 88
}, {
    period: '2012',
    '营销部': 50,
    '客服部': 54,
    '销售部': 45,
    '售后部': 81,
    '人事部': 54
}, {
    period: '2013',
    '营销部': 50,
    '客服部': 80,
    '销售部': 80,
    '售后部': 20,
    '人事部': 20
}, {
    period: '2014',
    '营销部': 41,
    '客服部': 58,
    '销售部': 63,
    '售后部': 41,
    '人事部': 20
}, {
    period: '2015',
    '营销部': 55,
    '客服部': 62,
    '销售部': 16,
    '售后部': 84,
    '人事部': 68
}, {
    period: '2016',
    '营销部': 51,
    '客服部': 24,
    '销售部': 56,
    '售后部': 37,
    '人事部': 20
},
 {
    period: '2017',
    '营销部': 43,
    '客服部': 61,
    '销售部': 15,
    '售后部': 84,
    '人事部': 20
}];
Morris.Area({
        element: 'morris-area-chart',
        data: arr,
        xkey: 'period',
        ykeys: ['营销部', '客服部', '销售部','售后部','人事部'],
        labels: ['营销部', '客服部', '销售部','售后部','人事部'],
        pointSize: 3,
        fillOpacity: 0,
        pointStrokeColors:['#00bfc7', '#fb9678', 'blue','red', '#9665ce'],
        behaveLikeLine: true,
        gridLineColor: 'rgba(255, 255, 255, 0.1)',
        lineWidth: 3,
        gridTextColor:'#96a2b4',
        hideHover: 'auto',
        lineColors: ['#00bfc7', '#fb9678', 'blue','red', '#9665ce'],
        resize: true
        
    });

/*Morris.Area({
        element: 'morris-area-chart2',
        data: [{
            period: '2010',
            SiteA: 0,
            SiteB: 0,
            
        }, {
            period: '2011',
            SiteA: 130,
            SiteB: 100,
            
        }, {
            period: '2012',
            SiteA: 80,
            SiteB: 60,
            
        }, {
            period: '2013',
            SiteA: 70,
            SiteB: 200,
            
        }, {
            period: '2014',
            SiteA: 180,
            SiteB: 150,
            
        }, {
            period: '2015',
            SiteA: 105,
            SiteB: 90,
            
        },
         {
            period: '2016',
            SiteA: 250,
            SiteB: 150,
           
        }],
        xkey: 'period',
        ykeys: ['SiteA', 'SiteB'],
        labels: ['Site A', 'Site B'],
        pointSize: 0,
        fillOpacity: 0.4,
        pointStrokeColors:['#5e6d88', '#01c0c8'],
        behaveLikeLine: true,
        gridLineColor: 'rgba(255, 255, 255, 0.1)',
        lineWidth: 0,
        gridTextColor: '#96a2b4',
        smooth: false,
        hideHover: 'auto',
        lineColors: ['#5e6d88', '#01c0c8'],
        resize: true
        
    });

 
 $('.vcarousel').carousel({
            interval: 3000
         })
$(".counter").counterUp({
        delay: 100,
        time: 1200
    });*/

/*$(document).ready(function() {
    
   var sparklineLogin = function() { 
        $('#sales1').sparkline([20, 40, 30], {
            type: 'pie',
            height: '90',
            resize: true,
            sliceColors: ['#01c0c8', '#7d5ab6', '#ffffff']
        });
        $('#sparkline2dash').sparkline([6, 10, 9, 11, 9, 10, 12], {
            type: 'bar',
            height: '154',
            barWidth: '4',
            resize: true,
            barSpacing: '10',
            barColor: '#25a6f7'
        });
        
   }
    var sparkResize;
 
        $(window).resize(function(e) {
            clearTimeout(sparkResize);
            sparkResize = setTimeout(sparklineLogin, 500);
        });
        sparklineLogin();

});*/