<table data-toggle='table' class="table table-hover table-bordered week1">
	<%= render partial: 'mountains/weather_cat' %>
	  <thead>
	    <tr>
	      <th data-field="mountain" data-sortable="true">Mountain</th>
	      <% forecast = @forecasts.first.second %>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[0].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[1].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[2].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[3].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[4].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[5].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[6].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[7].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[8].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[9].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[10].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[11].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[12].day %></th>
		      <th data-field="#{day}" data-sortable="true"><%= forecast[13].day %></th>
		      <th data-field="14" data-sortable="true"><%= forecast[14].day %></th>
		      <th data-field="15" data-sortable="true"><%= forecast[15].day %></th>
	      <th data-field="h" data-sortable="true">High</th>
	      <th data-field="l" data-sortable="true">Low</th>
	      <th data-field="t" data-sortable="true">Total</th>
	      <th data-field="a" data-sortable="true">Average</th>
	    </tr>
	  </thead>
	  <tbody>
			<% @forecasts.each do |mountain, forecast| %>
		    <tr class='snow'>
		      <td><%= mountain %>: Snow</td>
		      <td><%= forecast[0].snow %> mm 1</td>
		      <td><%= forecast[1].snow %> mm 2</td>
		      <td><%= forecast[2].snow %> mm 3</td>
		      <td><%= forecast[3].snow %> mm 4</td>
		      <td><%= forecast[4].snow %> mm 5</td>
		      <td><%= forecast[5].snow %> mm 6</td>
		      <td><%= forecast[6].snow %> mm 7</td>
		      <td><%= forecast[7].snow %> mm 8</td>
		      <td><%= forecast[8].snow %> mm 9</td>
		      <td><%= forecast[9].snow %> mm 10</td>
		      <td><%= forecast[10].snow %> mm 11</td>
		      <td><%= forecast[11].snow %> mm 12</td>
		      <td><%= forecast[12].snow %> mm 13</td>
		      <td><%= forecast[13].snow %> mm 14</td>
		      <td><%= forecast[14].snow %> mm 15</td>
		      <td><%= forecast[15].snow %> mm 16</td>
		      <td>High</td>
		      <td>Low</td>
		      <td>Total</td>
		      <td>Average</td>
		    </tr>
			<% end %>
	  </tbody>
</table>

<table data-toggle='table' class="table table-hover table-bordered week1">
	<caption class='snow'>Snow Totals (mm/3h)</caption>
	  <thead>
	    <tr>
	      <th data-field="mountain" data-sortable="true">Mountain</th>
				<% forecasts.first.second.each_with_index do |forecast, index| %>
					<th data-field=<%= "day" + (index + 1).to_s %> data-sortable="true"><%= forecast.day %></th>
				<% end %>
	      <th data-field="h" data-sortable="true">High</th>
	      <th data-field="l" data-sortable="true">Low</th>
	      <th data-field="t" data-sortable="true">Total</th>
	      <th data-field="a" data-sortable="true">Average</th>
	    </tr>
	  </thead>
	  <tbody>
			<% forecasts.each do |mountain, forecast| %>
		    <tr class='snow'>
		      <td><%= mountain %>: Snow</td>
		      <% forecast.each_with_index do |day, index| %>
		      	<td><%= day.snow %> mm <%= index %> </td>
		      <% end %>
		      <td>High</td>
		      <td>Low</td>
		      <td>Total</td>
		      <td>Average</td>
		    </tr>
			<% end %>
	  </tbody>
</table>



<table data-toggle='table' class="table table-hover table-bordered week1">
	<caption class='weather'>Weather Totals</caption>
	  <thead>
	    <tr>
	      <th data-field="mountain" data-sortable="true">Mountain</th>
				<% forecasts.first.second.each_with_index do |forecast, index| %>
					<th data-field=<%= "day" + (index + 1).to_s %> data-sortable="true"><%= forecast.day %></th>
				<% end %>
	      <th data-field="h" data-sortable="true">High</th>
	      <th data-field="l" data-sortable="true">Low</th>
	      <th data-field="t" data-sortable="true">Total</th>
	      <th data-field="a" data-sortable="true">Average</th>
	    </tr>
	  </thead>
	  <tbody>
			<% forecasts.each do |mountain, forecast| %>
		    <tr class='weather'>
		      <td><%= mountain %>: Weather</td>
		      <% forecast.each_with_index do |day, index| %>
		      	<td><%= image_tag "http://openweathermap.org/img/w/#{day.weather.icon}.png" %><%= index %></td>
	      	<% end %>
		      <td>High</td>
		      <td>Low</td>
		      <td>Total</td>
		      <td>Average</td>
		  	</tr>
			<% end %>
	  </tbody>
</table>



$('.show-snow').click(function() {
    $('tbody tr').hide();
    $('tbody tr.snow').show();
    $('tbody tr.next-mountain').show();
    $('.table.week2 caption').hide();
    $('.table.week2 caption.snow').show();
    $('.table.week1 caption').hide();
    $('.table.week1 caption.snow').show();
});

$('.show-weather').click(function() {
    $('tbody tr').hide();
    $('tbody tr.weather').show();
    $('tbody tr.next-mountain').show();
    $('.table.week2 caption').hide();
    $('.table.week2 caption.weather').show();
    $('.table.week1 caption').hide();
    $('.table.week1 caption.weather').show();
});

$('.show-temperature').click(function() {
    $('tbody tr').hide();
    $('tbody tr.temperature').show();
    $('tbody tr.next-mountain').show();
    $('.table.week2 caption').hide();
    $('.table.week2 caption.temperature').show();
    $('.table.week1 caption').hide();
    $('.table.week1 caption.temperature').show();
});

$('.show-wind').click(function() {
    $('tbody tr').hide();
    $('tbody tr.wind').show();
    $('tbody tr.next-mountain').show();
    $('.table.week2 caption').hide();
    $('.table.week2 caption.wind').show();
    $('.table.week1 caption').hide();
    $('.table.week1 caption.wind').show();
});

$('.show-all').click(function() {
    $('tbody tr').show();
    $('.table.week2 caption').hide();
    $('tbody tr.next-mountain').show();
    $('.table.week1 caption').hide();
    $('.table.week1 caption.all').show();
});

$('.table.week1 caption').hide();
$('.table.week1 caption.selected').hide();

function monthSorter(a, b) {
    if (a.month < b.month) return -1;
    if (a.month > b.month) return 1;
    return 0;
};
// $function show(weather){
//     $('tbody tr').hide();   
//     $('tbody tr:has(a.'+weather+')').show();
//     };







<table class="table table-bordered week2">
<caption class='snow'>Snow Totals (mm/3h)</caption>
<caption class='weather'>Weather Totals</caption>
<caption class='temperature'>Temperature Totals (F˚)</caption>
<caption class='wind'>Wind Totals (mi/hr)</caption>
<caption class='all'>All Mountains</caption>
<% @forecasts.each_with_index do |(mountain, forecast), index| %>
	  <thead>
	    <tr>
	    	<% if index < 1 %>
	      <th>2 Weeks</th>
	      <% forecast.each_with_index do |day, index| %>
	      	<th><%= day.day %></td>
	      <% end %>
	      <th>High</th>
	      <th>Low</th>
	      <th>Total</th>
	      <th>Average</th>
	    </tr>
	  </thead>
	  <% end %>
	  <tbody>
	    <tr class='weather'>
	      <th><%= mountain %>: Weather</th>
	      <% forecast.each_with_index do |day, index| %>
	      	<% if index >= 8 %>
	      	<td><%= image_tag "http://openweathermap.org/img/w/#{day.weather.icon}.png" %></td>
	      	<% end %>
	      <% end %>
	      <td>High</td>
	      <td>Low</td>
	      <td>Total</td>
	      <td>Average</td>
	    </tr>
	    <tr class='temperature'>
	      <th><%= mountain %>: Temperature</th>
	      <% forecast.each_with_index do |day, index| %>
	      <% if index >= 8 %>
	      	<td><p><%= day.temp.day_temp %> F˚</p></td>
	      <% end %>
	      <% end %>
	      <td>High</td>
	      <td>Low</td>
	      <td>Total</td>
	      <td>Average</td>
	    </tr>
	    <tr class='wind'>
	      <th><%= mountain %>: Wind</th>
	      <% forecast.each_with_index do |day, index| %>
	      <% if index >= 8 %>
	      	<td><%= day.speed %> mi/h - <%= day.wind_dir %></td>
	      <% end %>
	      <% end %>
	      <td>High</td>
	      <td>Low</td>
	      <td>Total</td>
	      <td>Average</td>
	    </tr>
	    <tr class='snow'>
	      <th><%= mountain %>: Snow</th>
	      <% forecast.each_with_index do |day, index| %>
	      	<td><%= day.snow %> mm</td>
	      <% end %>
	      <td>High</td>
	      <td>Low</td>
	      <td>Total</td>
	      <td>Average</td>
	    </tr>
	  </tbody>
<% end %>
	</table>



	<table data-toggle='table' class="table table-hover table-bordered week1">
<% @forecasts.each_with_index do |(mountain, forecast), index| %>
	  <thead>
	    <tr>
	    	<% if index < 1 %>
	      <th> Week 1</th>
	      <% forecast.each_with_index do |day, index| %>
	      	<% if index < 8 %>
	      	<th data-field="#{day}" 
            data-sortable="true"><%= day.day %></td>
	      	<% end %>
	      <% end %>
	      <th data-field="h" 
            data-sortable="true">High</th>
	      <th data-field="l" 
            data-sortable="true">Low</th>
	      <th data-field="t" 
            data-sortable="true">Total</th>
	      <th data-field="a" 
            data-sortable="true">Average</th>
	    </tr>
	  </thead>
	  <% end %>
	  <tbody>
			<tr class='weather'>
				<td><%= mountain %>: Weather</td>
				<% forecast.each_with_index do |day, index| %>
					<% if index < 8 %>
						<td><%= image_tag "http://openweathermap.org/img/w/#{day.weather.icon}.png" %></td>
					<% end %>
				<% end %>
				<td>High</td>
				<td>Low</td>
				<td>Total</td>
				<td>Average</td>
			</tr>
	    <tr class='temperature'>
	      <td><%= mountain %>: Temperature</td>
	      <% forecast.each_with_index do |day, index| %>
	      <% if index < 8 %>
	      	<td><p><%= day.temp.day_temp %> F˚</p></td>
	      <% end %>
	      <% end %>
	      <td></td>
	      <td>Low</td>
	      <td>Total</td>
	      <td>Average</td>
	    </tr>
	    <tr class='wind'>
	      <td><%= mountain %>: Wind</td>
	      <% forecast.each_with_index do |day, index| %>
	      <% if index < 8 %>
	      	<td><%= day.speed %> mi/h - <%= day.wind_dir %></td>
	      <% end %>
	      <% end %>
	      <td>High</td>
	      <td>Low</td>
	      <td>Total</td>
	      <td>Average</td>
	    </tr>
	    <tr class='snow'>
	      <td><%= mountain %>: Snow</td>
	      <% forecast.each_with_index do |day, index| %>
	      <% if index < 8 %>
	      	<td><%= day.snow %> mm</td>
	      <% end %>
	      <% end %>
	      <td>High</td>
	      <td>Low</td>
	      <td>Total</td>
	      <td>Average</td>
	    </tr>
	  </tbody>
<% end %>
	</table>


<table class="table table-bordered week2">
<% @forecasts.each_with_index do |(mountain, forecast), index| %>
	  <thead>
	    <tr>
	    	<% if index < 1 %>
	      <th> Week 2</th>
	      <% forecast.each_with_index do |day, index| %>
	      	<% if index >= 8 %>
	      	<th><%= day.day %></td>
	      	<% end %>
	      <% end %>
	      <th>High</th>
	      <th>Low</th>
	      <th>Total</th>
	      <th>Average</th>
	    </tr>
	  </thead>
	  <% end %>
	  <tbody>
	    <tr class='weather'>
	      <th><%= mountain %>: Weather</th>
	      <% forecast.each_with_index do |day, index| %>
	      	<% if index >= 8 %>
	      	<td><%= image_tag "http://openweathermap.org/img/w/#{day.weather.icon}.png" %></td>
	      	<% end %>
	      <% end %>
	      <td>High</td>
	      <td>Low</td>
	      <td>Total</td>
	      <td>Average</td>
	    </tr>
	    <tr class='temperature'>
	      <th><%= mountain %>: Temperature</th>
	      <% forecast.each_with_index do |day, index| %>
	      <% if index >= 8 %>
	      	<td><p><%= day.temp.day_temp %> F˚</p></td>
	      <% end %>
	      <% end %>
	      <td>High</td>
	      <td>Low</td>
	      <td>Total</td>
	      <td>Average</td>
	    </tr>
	    <tr class='wind'>
	      <th><%= mountain %>: Wind</th>
	      <% forecast.each_with_index do |day, index| %>
	      <% if index >= 8 %>
	      	<td><%= day.speed %> mi/h - <%= day.wind_dir %></td>
	      <% end %>
	      <% end %>
	      <td>High</td>
	      <td>Low</td>
	      <td>Total</td>
	      <td>Average</td>
	    </tr>
	    <tr class='snow'>
	      <th><%= mountain %>: Snow</th>
	      <% forecast.each_with_index do |day, index| %>
	      <% if index >= 8 %>
	      	<td><%= day.snow %> mm</td>
	      <% end %>
	      <% end %>
	      <td>High</td>
	      <td>Low</td>
	      <td>Total</td>
	      <td>Average</td>
	    </tr>
	  </tbody>
<% end %>
	</table>


	<table class="table table-bordered total both-weeks">
<% @forecasts.each_with_index do |(mountain, forecast)| %>
	  <thead>
	    <tr>
	      <th><%= mountain %></th>
	      <th class='center-text'>Week One</th>
	      <th class='center-text'>Week Two</th>
	      <th clsss='center-text'>Total</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th></th>
	      <td>
	      	<div class="col-md-3">
	      		High
	      	</div>
	      	<div class="col-md-3">
	      		Low
	      	</div>
	      	<div class="col-md-3">
	      		Total
	      	</div>
	      	<div class="col-md-3">
	      		Average
	      	</div>
	      	<div class="col-md-3">
	      		99
	      	</div>
	      	<div class="col-md-3">
	      		99
	      	</div>
	      	<div class="col-md-3">
	      		9999
	      	</div>
	      	<div class="col-md-3">
	      		9099
	      	</div>

	      </td>
	      <td>
	      	<div class="col-md-3">
	      		High
	      	</div>
	      	<div class="col-md-3">
	      		Low
	      	</div>
	      	<div class="col-md-3">
	      		Total
	      	</div>
	      	<div class="col-md-3">
	      		Average
	      	</div>
	      </td>
	      <td>
	      	<div class="col-md-3">
	      		High
	      	</div>
	      	<div class="col-md-3">
	      		Low
	      	</div>
	      	<div class="col-md-3">
	      		Total
	      	</div>
	      	<div class="col-md-3">
	      		Average
	      	</div>
	      </td>
	    </tr>
	  </tbody>
<% end %>
	</table>



<form>
	<% @forcasts.first.second.each_with_index do |forecast, index| %>
    <input type="checkbox" name=<%= 'day' + index.to_s %> checked="checked" /> Hide/Show Column 1 <br />
	<% end %>
</form>


<form>
    <input type="checkbox" name="day0" checked="checked" /> Hide/Show Column 1 <br />
    <input type="checkbox" name="day1" checked="checked" /> Hide/Show Column 2 <br />
    <input type="checkbox" name="day2" checked="checked" /> Hide/Show Column 3 <br />
</form>




<div class='col-md-12'>
	<%= render partial: 'mountains/total_weekly_snow_cat', locals: { forecasts: @forecasts, category: @category } %>
</div>

<div class='col-md-6'>
	<%= render partial: 'mountains/week1_snow_cat', locals: { forecasts: @forecasts, category: @category } %>
</div>

<div class='col-md-6'>
	<%= render partial: 'mountains/week2_snow_cat', locals: { forecasts: @forecasts, category: @category } %>
</div>
