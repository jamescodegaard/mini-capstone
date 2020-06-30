/* global axios */
console.log("Sanity Check");

axios.get("https://localhost:3000/api/products").then(function (response) {
  console.log(response.data);
});