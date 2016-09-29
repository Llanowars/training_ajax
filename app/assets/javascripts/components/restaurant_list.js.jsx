var RestaurantList = React.createClass({
  render: function() {
    return (
      <div>
        {this.props.restaurants.map(function(restaurant){
          return <RestaurantListItem restaurant={restaurant} key={restaurant.id} />;
        })}
      </div>
    );
  }
});