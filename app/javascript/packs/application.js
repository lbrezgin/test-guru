// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')


import 'jquery/dist/jquery';
import '@popperjs/core';
import 'bootstrap';

require("/app/javascript/utilities/sorting")
require("/app/javascript/utilities/matching")
require("/app/javascript/utilities/form_inline")
require("/app/javascript/utilities/test_progress")
require("/app/javascript/utilities/badges_value")
require("/app/javascript/utilities/timer")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
