var ProductList = React.createClass({
  render: function() {
    return (
      <div>
        {this.props.restaurants.map(function(product){
          return <RestaurantListItem restaurant={restaurant} key={restaurant.id} />;
        })}
      </div>
    );
  }
});