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