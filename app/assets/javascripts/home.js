// var serverTime = new Date();

// function updateTime() {
//     /// Increment serverTime by 1 second and update the html for '#time'
//     serverTime = new Date(serverTime.getTime() + 1000);
    
//     var curr_hour = serverTime.getHours();
//     var curr_min = serverTime.getMinutes();
//     var curr_sec = serverTime.getSeconds();
//     $('#time').html(curr_hour + ':' + curr_min + ':' + curr_sec);



// }

// $(function() {
//     updateTime();
//     setInterval(updateTime, 1000);
// });

function updateTime(){
    var currentTime = new Date()
    var hours = currentTime.getHours()
    var minutes = currentTime.getMinutes()
    if (minutes < 10){
        minutes = "0" + minutes
    }
    var t_str = hours + ":" + minutes;  
    
    
    document.getElementById('time_span').innerHTML = t_str;
}
setInterval(updateTime, 1000);