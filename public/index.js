/* global axios */
console.log("Sanity Check");

axios.get("https://peaceful-reaches-05151.herokuapp.com/api/products").then(function (response) {
  console.log(response.data);
});