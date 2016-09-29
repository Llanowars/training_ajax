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
      <div className={divClasses}>
        <div className="product-arrow"></div>
        <div className="product-count">
          {this.state.restaurant.up_votes}
        </div>
      </div>
    );
  }
});