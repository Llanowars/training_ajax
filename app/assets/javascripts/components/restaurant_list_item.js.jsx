var RestaurantListItem = React.createClass({
  render: function() {
    return (

      // <div className="product">
      //   <div className="product-upvote">TODO</div>
      //   <div className="product-body">
      //     <h3>
      //       <a href={this.props.product.url} target="_blank">{this.props.product.name}</a>
      //     </h3>
      //     <p>{this.props.product.tagline}</p>
      //   </div>
      //   <div className="product-controls">
      //     <div className="product-control">
      //       <div className="user-badge-container ">
      //         <img src={this.props.product.user.avatar_url} className="avatar"/>
      //       </div>
      //     </div>
      //   </div>
      // </div>

      <div class="product" id="restaurant_<%= restaurant.id %>">
        <div class='product-body'>
          <li class="list-inline" id="restaurant_<%= restaurant.id %>">

           
          </li>
        </div>
      </div>
    );
  }
});