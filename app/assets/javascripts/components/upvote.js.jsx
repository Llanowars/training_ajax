var Upvote = React.createClass({
  getInitialState: function() {
    return {
      restaurant: this.props.restaurant
    }
  },

  render: function() {
    var divClasses = classNames({
      "product-upvote": true,
      "product-upvote-upvoted": this.state.restaurant.up_voted
    });

    return (
      <div className={divClasses} onClick={this.upvote}>
        <div className="product-arrow"></div>
        <div className="product-count">
          {this.state.restaurant.up_votes}
        </div>
      </div>
    );
  },

  upvote: function() {
    // console.log('you clicked on' + this.props.restaurant.id)
    var that = this;
    $.ajax({
      type: 'POST',
      url: Routes.upvote_restaurant_path(this.props.restaurant.id, { format: 'json' }),
      success: function(data) {
        // console.log(data);
        that.setState({ restaurant: data });
      }
    });
  }

}); 