const ipnElement = document.querySelector('#pass')
const btnElement = document.querySelector('#passeye')


// step 2
btnElement.addEventListener('click', function() {
  // step 3
  const currentType = ipnElement.getAttribute('type')
  // step 4
  ipnElement.setAttribute(
    'type',
    currentType === 'password' ? 'text' : 'password'
  )
})
const ipnElement1 = document.querySelector('#retypepass')
const btnElement1 = document.querySelector('#retypeeye')


// step 2
btnElement1.addEventListener('click', function() {
  // step 3
  const currentType = ipnElement1.getAttribute('type')
  // step 4
  ipnElement1.setAttribute(
    'type',
    currentType === 'password' ? 'text' : 'password'
  )
})

const ipnElement2 = document.querySelector('#passold')
const btnElement2 = document.querySelector('#passeyeold')


// step 2
btnElement2.addEventListener('click', function() {
  // step 3
  const currentType = ipnElement2.getAttribute('type')
  // step 4
  ipnElement2.setAttribute(
    'type',
    currentType === 'password' ? 'text' : 'password'
  )
});
// login with google
var error = document.querySelector('#error');
function onSignIn(googleUser) {
  // Useful data for your client-side scripts:
  var profile = googleUser.getBasicProfile();
  console.log("ID: " + profile.getId()); // Don't send this directly to your server!
  console.log('Full Name: ' + profile.getName());
  console.log('Given Name: ' + profile.getGivenName());
  console.log('Family Name: ' + profile.getFamilyName());
  console.log("Image URL: " + profile.getImageUrl());
  console.log("Email: " + profile.getEmail());
  // The ID token you need to pass to your backend:
  // window.location.href = 'Login?action=Google&name='+profile.getName()+
  //     '&email='+profile.getEmail();
  var id_token = googleUser.getAuthResponse().id_token;
  console.log("ID Token: " + id_token);
}