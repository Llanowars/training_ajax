var RestaurantListItem = React.createClass({
  render: function() {
    return (
      <div>
        <div className="product">
          <div className="product-upvote">
            <Upvote restaurant={this.props.restaurant} />
          </div>
          <div className="product-body">
            <div className="product" id={this.props.restaurant.id}>
              <div className="product-body">
                <p id={this.props.restaurant.id}>{this.props.restaurant.name}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
});