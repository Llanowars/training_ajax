var RestaurantListItem = React.createClass({
  render: function() {
    return (
      <div class="product" id={this.props.restaurant.id}>
        <div class='product-body'>
          <li class="list-inline" id={this.props.restaurant.id}>
            <h3>{this.props.restaurant.name}</h3>
          </li>
        </div>
      </div>
    );
  }
});