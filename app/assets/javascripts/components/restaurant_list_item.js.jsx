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
                <li className='list-inline'>
                  <a href={Routes.restaurant_path(this.props.restaurant.id)}>{this.props.restaurant.name}</a>
                  <a href={Routes.edit_restaurant_path(this.props.restaurant.id)}>edit</a>
                  {/* <a href={Routes.restaurant_path(this.props.restaurant.id)} data-method="delete">delete</a> */}
                </li>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
});