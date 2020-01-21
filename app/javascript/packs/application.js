// Import all external templates //
import "jquery";
import "bootstrap";

// Import all template related code//
import "../templates/vendor/jquery.validate/additional-methods";
import "../templates/vendor/jquery.validate/jquery.validate";
import "../templates/vendor/jquery.autoellipsis";
// import "../templates/vendor/jquery.contextMenu.min";
import "../templates/vendor/jquery.smartWizard.min";
import "../templates/vendor/jquery.barrating.min";
import "../templates/vendor/Chart.bundle.min.js";
import "../templates/dore-plugins/select.from.library";
import "../templates/vendor/bootstrap-datepicker";
import "../templates/vendor/bootstrap-timepicker";
import "../templates/vendor/bootstrap-notify.min";
import "../templates/vendor/baguetteBox.min";
import "../templates/vendor/countdown.min";
import "../templates/vendor/cropper.min";
import "../templates/vendor/moment.min.js";
import "../templates/vendor/fullcalendar.min.js";
import "../templates/vendor/mousetrap.min";
import "../templates/vendor/nouislider.min";
import "../templates/vendor/perfect-scrollbar.min";
import "../templates/vendor/progressbar.min";
import "../templates/vendor/quill.min";
import "../templates/vendor/select2.full";
import "../templates/vendor/slick.min";
import "../templates/vendor/Sortable";
import "../templates/vendor/typeahead.bundle";
import "../templates/vendor/video";
import "../templates/dore.script";
import "../templates/scripts";
import "../templates/scripts.single.theme.js";
import "../templates/vendor/dropzone.min";

// Import own components
import "../features/radio-buttons";
import "../features/sticky-scroll";


// Initialize template necessary code
$('.calendar').fullCalendar({ });
$('.timepicker').timepicker();
$('.datepicker').datepicker()
